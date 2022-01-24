#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_7__ {int buttons; int x; int y; int v; } ;

/* Variables and functions */
 scalar_t__ PS2_ACK ; 
 scalar_t__ PS2_MOUSE_BTN_MASK ; 
 int /*<<< orphan*/  PS2_MOUSE_READ_DATA ; 
 int PS2_MOUSE_SCROLL_MASK ; 
 int PS2_MOUSE_V_MULTIPLIER ; 
 int PS2_MOUSE_X_MULTIPLIER ; 
 int PS2_MOUSE_Y_MULTIPLIER ; 
 scalar_t__ debug_mouse ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__ mouse_report ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(void) {
    static uint8_t buttons_prev = 0;
    extern int     tp_buttons;

    /* receives packet from mouse */
    uint8_t rcv;
    rcv = FUNC3(PS2_MOUSE_READ_DATA);
    if (rcv == PS2_ACK) {
        mouse_report.buttons = FUNC2() | tp_buttons;
        mouse_report.x       = FUNC2() * PS2_MOUSE_X_MULTIPLIER;
        mouse_report.y       = FUNC2() * PS2_MOUSE_Y_MULTIPLIER;
#ifdef PS2_MOUSE_ENABLE_SCROLLING
        mouse_report.v = -(ps2_host_recv_response() & PS2_MOUSE_SCROLL_MASK) * PS2_MOUSE_V_MULTIPLIER;
#endif
    } else {
        if (debug_mouse) FUNC1("ps2_mouse: fail to get mouse packet\n");
        return;
    }

    /* if mouse moves or buttons state changes */
    if (mouse_report.x || mouse_report.y || mouse_report.v || ((mouse_report.buttons ^ buttons_prev) & PS2_MOUSE_BTN_MASK)) {
#ifdef PS2_MOUSE_DEBUG_RAW
        // Used to debug raw ps2 bytes from mouse
        ps2_mouse_print_report(&mouse_report);
#endif
        buttons_prev = mouse_report.buttons;
        FUNC5(&mouse_report);
#if PS2_MOUSE_SCROLL_BTN_MASK
        ps2_mouse_scroll_button_task(&mouse_report);
#endif
#ifdef PS2_MOUSE_DEBUG_HID
        // Used to debug the bytes sent to the host
        ps2_mouse_print_report(&mouse_report);
#endif
        FUNC0(&mouse_report);
    }

    FUNC4(&mouse_report);
}