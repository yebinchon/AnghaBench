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
 int DDRC ; 
 scalar_t__ MCUSR ; 
 int PCICR ; 
 int PCMSK1 ; 
 int PORTC ; 
 int /*<<< orphan*/  WDTO_60MS ; 
 int /*<<< orphan*/  WD_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  clock_div_1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  insomniac ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  last_timer ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int sleeping ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 

int FUNC23(void) {
    MCUSR = 0;
    FUNC2(clock_div_1);
    FUNC0(WD_OFF);

    // power saving: the result is worse than nothing... why?
    // pullup_pins();
    // set_prr();

#ifdef PROTOCOL_VUSB
    disable_vusb();
#endif
    FUNC19(115200);
    FUNC12();
    FUNC15("\nSend BREAK for UART Console Commands.\n");

    // TODO: move to iWRAP/suart file
    FUNC15("suart init\n");
    // suart init
    // PC4: Tx Output IDLE(Hi)
    PORTC |= (1 << 4);
    DDRC |= (1 << 4);
    // PC5: Rx Input(pull-up)
    PORTC |= (1 << 5);
    DDRC &= ~(1 << 5);
    // suart receive interrut(PC5/PCINT13)
    PCMSK1 = 0b00100000;
    PCICR  = 0b00000010;

    FUNC6(FUNC9());

    FUNC15("iwrap_init()\n");
    FUNC10();
    FUNC7();

    last_timer = FUNC18();
    while (true) {
#ifdef PROTOCOL_VUSB
        if (host_get_driver() == vusb_driver()) usbPoll();
#endif
        FUNC13();
#ifdef PROTOCOL_VUSB
        if (host_get_driver() == vusb_driver()) vusb_transfer_keyboard();
#endif
        // TODO: depricated
        if (FUNC14() || FUNC3()) {
            last_timer = FUNC18();
            sleeping   = false;
        } else if (!sleeping && FUNC17(last_timer) > 4000) {
            sleeping = true;
            FUNC8();
        }

        // TODO: suspend.h
        if (FUNC5() == FUNC9()) {
            if (sleeping && !insomniac) {
                FUNC1(1);  // wait for UART to send
                FUNC11();
                FUNC16(WDTO_60MS);
            }
        }
    }
}