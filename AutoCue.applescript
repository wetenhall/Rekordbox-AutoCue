# Grayzees Auto Cue script. #
# Sets Cue Points 1 to 8 using the memory bank

## WARNING Ç
# DO NOT Touch the keyboard or mouse once the script is going. 

# 1. Make a playlist in rekordbox.
# 2. Make sure "set Memory cue at the first beat of track when analyzing" is switched on.
# To turn this on go to preferances > Analysis > Track Analysis section and enable the option. 
# 3. Find out how many tracks are in the playlist. (For best results use this on tracks that don't have cue points set.)
# 4. Load the first track in the playlist to get it started 
# 5. Press play in the script editor.
# 6. Enter the number of tracks you want to process e.g playlist has 100 tracks put 100
# 7. WAIT FOR THE Program to finish. 

# In an emergency press cmd+alt+esc and try to quit the script process. The script uses keystrokes to automate rekordbox so it will try to fight you. 


tell application "rekordbox"
	activate
	display dialog "How many tracks do you want to cue?" default answer "" buttons {"Cancel", "Continue"} default button "Continue"
	set myVariable to the text returned of the result
	set mystring to "Your going to run over " & myVariable
	#display dialog myVariable buttons {"OK"} default button 1
	
end tell


tell application "System Events"
	
	repeat myVariable times
		delay 0.2
		
		#Move to first memory cue
		key code 45
		
		# move forward 16 bars 
		repeat 16 times
			delay 0.1
			
			# move right 16 
			key code 124
			
			# cue point 
			keystroke "c"
			
			delay 0.2
			
			# save memory
			keystroke "m"
			
		end repeat
		delay 0.1
		
		# Move Down 1
		tell application "System Events" to key code 125 using command down
		
	end repeat
	
	
end tell