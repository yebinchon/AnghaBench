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
typedef  int uint8_t ;

/* Variables and functions */
#define  KC_DEL 135 
#define  KC_END 134 
#define  KC_H 133 
#define  KC_HOME 132 
#define  KC_INSERT 131 
#define  KC_PGDOWN 130 
#define  KC_PGUP 129 
#define  KC_SLASH 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int sun_bell ; 
 int sun_click ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

bool FUNC3(uint8_t code)
{
    switch (code) {
        case KC_H:
        case KC_SLASH: /* ? */
            FUNC0("\n\n----- Sun converter Help -----\n");
            FUNC0("Home:        Toggle Bell\n");
            FUNC0("End:         Toggle Click\n");
            FUNC0("PgUp:        LED all On\n");
            FUNC0("PgDown:      LED all Off\n");
            FUNC0("Insert:      Layout\n");
            FUNC0("Delete:      Reset\n");
            return false;
        case KC_DEL:
            FUNC0("Reset\n");
            FUNC1(0x01);
            break;
        case KC_HOME:
	    sun_bell = !sun_bell;
	    if (sun_bell) {
                FUNC0("Bell On\n");
	        FUNC1(0x02);
	    } else {
	        FUNC0("Bell Off\n");
	        FUNC1(0x03);
	    }
            break;
        case KC_END:
	    sun_click = !sun_click;
	    if (sun_click) {
	        FUNC0("Click On\n");
		FUNC1(0x0A);
	    } else {
	        FUNC0("Click Off\n");
                FUNC1(0x0B);
	    }
	    break;
        case KC_PGUP:
            FUNC0("LED all on\n");
            FUNC1(0x0E);
            FUNC1(0xFF);
            break;
        case KC_PGDOWN:
            FUNC0("LED all off\n");
            FUNC1(0x0E);
            FUNC1(0x00);
            break;
        case KC_INSERT:
            FUNC0("layout\n");
            FUNC1(0x0F);
            break;
        default:
            FUNC2("Unknown extra command: %02X\n", code);
            return false;
    }
    return true;
}