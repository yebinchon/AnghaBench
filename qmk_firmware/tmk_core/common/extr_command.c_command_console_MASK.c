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
#define  KC_ESC 132 
#define  KC_H 131 
#define  KC_M 130 
#define  KC_Q 129 
#define  KC_SLASH 128 
 int /*<<< orphan*/  MOUSEKEY ; 
 int /*<<< orphan*/  ONESHOT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  command_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(uint8_t code) {
    switch (code) {
        case KC_H:
        case KC_SLASH: /* ? */
            FUNC0();
            break;
        case KC_Q:
        case KC_ESC:
            command_state = ONESHOT;
            return false;
#ifdef MOUSEKEY_ENABLE
        case KC_M:
            mousekey_console_help();
            print("M> ");
            command_state = MOUSEKEY;
            return true;
#endif
        default:
            FUNC2("?");
            return false;
    }
    FUNC2("C> ");
    return true;
}