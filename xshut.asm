format PE GUI 4.0 NX
entry oep

include 'win32a.inc' 

section '.code' code readable executable
oep:
	;cinvoke turnOff, 0
	ccall [turnOff], 0
	invoke ExitProcess 

section '.idata' import data readable writeable

	library kernel32,'KERNEL32.DLL',\
		xinput,'XInput1_3.dll'
	import kernel32,\ 
        ExitProcess,'ExitProcess'
    import xinput, \
    	turnOff, 103