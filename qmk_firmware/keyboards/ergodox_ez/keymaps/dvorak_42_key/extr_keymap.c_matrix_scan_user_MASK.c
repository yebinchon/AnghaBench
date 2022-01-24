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
#define  BROWSER_CONTROL 134 
#define  COMBINED 133 
#define  KEYNAV 132 
#define  KEYSEL 131 
#define  SCREEN_NAV 130 
#define  SHELL_NAV 129 
#define  SHELL_SCREEN 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC6(void) {

    uint8_t layer = FUNC0(layer_state);

    FUNC1();
    FUNC2();
    FUNC4();
    switch (layer) {
        case COMBINED:
            FUNC3();
            break;
        case SHELL_NAV:
        case SHELL_SCREEN:
        case KEYNAV:
        case KEYSEL:
		case SCREEN_NAV:
            FUNC5();
            break;
	case BROWSER_CONTROL:
            FUNC3();
            FUNC5();
            break;
        default:
            break;
    }

}