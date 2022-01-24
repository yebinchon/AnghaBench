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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(u8 scancode) {
    switch (scancode) {
        case 0x0:
            FUNC0("ERROR");
            break;
        case 0x1:
            FUNC0("ESC");
            break;
        case 0x2:
            FUNC0("1");
            break;
        case 0x3:
            FUNC0("2");
            break;
        case 0x4:
            FUNC0("3");
            break;
        case 0x5:
            FUNC0("4");
            break;
        case 0x6:
            FUNC0("5");
            break;
        case 0x7:
            FUNC0("6");
            break;
        case 0x8:
            FUNC0("7");
            break;
        case 0x9:
            FUNC0("8");
            break;
        case 0x0A:
            FUNC0("9");
            break;
        case 0x0B:
            FUNC0("0");
            break;
        case 0x0C:
            FUNC0("-");
            break;
        case 0x0D:
            FUNC0("+");
            break;
        case 0x0E:
            FUNC0("Backspace");
            break;
        case 0x0F:
            FUNC0("Tab");
            break;
        case 0x10:
            FUNC0("Q");
            break;
        case 0x11:
            FUNC0("W");
            break;
        case 0x12:
            FUNC0("E");
            break;
        case 0x13:
            FUNC0("R");
            break;
        case 0x14:
            FUNC0("T");
            break;
        case 0x15:
            FUNC0("Y");
            break;
        case 0x16:
            FUNC0("U");
            break;
        case 0x17:
            FUNC0("I");
            break;
        case 0x18:
            FUNC0("O");
            break;
        case 0x19:
            FUNC0("P");
            break;
		case 0x1A:
			FUNC0("[");
			break;
		case 0x1B:
			FUNC0("]");
			break;
		case 0x1C:
			FUNC0("ENTER");
			break;
		case 0x1D:
			FUNC0("LCtrl");
			break;
		case 0x1E:
			FUNC0("A");
			break;
		case 0x1F:
			FUNC0("S");
			break;
        case 0x20:
            FUNC0("D");
            break;
        case 0x21:
            FUNC0("F");
            break;
        case 0x22:
            FUNC0("G");
            break;
        case 0x23:
            FUNC0("H");
            break;
        case 0x24:
            FUNC0("J");
            break;
        case 0x25:
            FUNC0("K");
            break;
        case 0x26:
            FUNC0("L");
            break;
        case 0x27:
            FUNC0(";");
            break;
        case 0x28:
            FUNC0("'");
            break;
        case 0x29:
            FUNC0("`");
            break;
		case 0x2A:
			FUNC0("LShift");
			break;
		case 0x2B:
			FUNC0("\\");
			break;
		case 0x2C:
			FUNC0("Z");
			break;
		case 0x2D:
			FUNC0("X");
			break;
		case 0x2E:
			FUNC0("C");
			break;
		case 0x2F:
			FUNC0("V");
			break;
        case 0x30:
            FUNC0("B");
            break;
        case 0x31:
            FUNC0("N");
            break;
        case 0x32:
            FUNC0("M");
            break;
        case 0x33:
            FUNC0(",");
            break;
        case 0x34:
            FUNC0(".");
            break;
        case 0x35:
            FUNC0("/");
            break;
        case 0x36:
            FUNC0("Rshift");
            break;
        case 0x37:
            FUNC0("Keypad *");
            break;
        case 0x38:
            FUNC0("LAlt");
            break;
        case 0x39:
            FUNC0("Spc");
            break;
        default:
            /* 'keuyp' event corresponds to the 'keydown' + 0x80 
             * it may still be a scancode we haven't implemented yet, or
             * maybe a control/escape sequence */
            if (scancode <= 0x7f) {
                FUNC0("Unknown key down");
            } else if (scancode <= 0x39 + 0x80) {
                FUNC0("key up ");
                FUNC1(scancode - 0x80);
            } else FUNC0("Unknown key up");
            break;
    }
}