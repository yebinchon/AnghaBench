#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(int type) {
	char *typeName;
	switch (type) {
	case 1:
		typeName = "CURSOR";
		break;
	case 2:
		typeName = "BITMAP";
		break;
	case 3:
		typeName = "ICON";
		break;
	case 4:
		typeName = "MENU";
		break;
	case 5:
		typeName = "DIALOG";
		break;
	case 6:
		typeName = "STRING";
		break;
	case 7:
		typeName = "FONTDIR";
		break;
	case 8:
		typeName = "FONT";
		break;
	case 9:
		typeName = "ACCELERATOR";
		break;
	case 10:
		typeName = "RCDATA";
		break;
	case 11:
		typeName = "MESSAGETABLE";
		break;
	case 12:
		typeName = "GROUP_CURSOR";
		break;
	case 14:
		typeName = "GROUP_ICON";
		break;
	case 15:
		typeName = "NAMETABLE";
		break;
	case 16:
		typeName = "VERSION";
		break;
	case 17:
		typeName = "DLGINCLUDE";
		break;
	case 19:
		typeName = "PLUGPLAY";
		break;
	case 20:
		typeName = "VXD";
		break;
	case 21:
		typeName = "ANICURSOR";
		break;
	case 22:
		typeName = "ANIICON";
		break;
	case 23:
		typeName = "HTML";
		break;
	case 24:
		typeName = "MANIFEST";
		break;
	default: 
		return FUNC0 ("UNKNOWN (%d)", type);
	}
	return FUNC1 (typeName);
}