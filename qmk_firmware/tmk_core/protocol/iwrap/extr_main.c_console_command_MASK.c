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
 int PCICR ; 
 int PCMSK1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int insomniac ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static bool FUNC10(uint8_t c) {
    switch (c) {
        case 'h':
        case '?':
            FUNC8("\nCommands for Bluetooth(WT12/iWRAP):\n");
            FUNC8("r: reset. software reset by watchdog\n");
            FUNC8("i: insomniac. prevent KB from sleeping\n");
            FUNC8("c: iwrap_call. CALL for BT connection.\n");
#ifdef PROTOCOL_VUSB
            print("u: USB mode. switch to USB.\n");
            print("w: BT mode. switch to Bluetooth.\n");
#endif
            FUNC8("k: kill first connection.\n");
            FUNC8("Del: unpair first pairing.\n");
            FUNC8("\n");
            return 0;
        case 'r':
            FUNC8("reset\n");
            FUNC0();
            return 1;
        case 'i':
            insomniac = !insomniac;
            if (insomniac)
                FUNC8("insomniac\n");
            else
                FUNC8("not insomniac\n");
            return 1;
        case 'c':
            FUNC8("iwrap_call()\n");
            FUNC4();
            return 1;
#ifdef PROTOCOL_VUSB
        case 'u':
            print("USB mode\n");
            init_vusb();
            change_driver(vusb_driver());
            // iwrap_kill();
            // iwrap_sleep();
            // disable suart receive interrut(PC5/PCINT13)
            PCMSK1 &= ~(0b00100000);
            PCICR &= ~(0b00000010);
            return 1;
        case 'w':
            print("iWRAP mode\n");
            change_driver(iwrap_driver());
            disable_vusb();
            // enable suart receive interrut(PC5/PCINT13)
            PCMSK1 |= 0b00100000;
            PCICR |= 0b00000010;
            return 1;
#endif
        case 'k':
            FUNC8("kill\n");
            FUNC6();
            return 1;
        case 0x7F:  // DELETE
            FUNC8("unpair\n");
            FUNC7();
            return 1;
    }
    return 0;
}