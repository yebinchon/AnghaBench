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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int ISSI_COMMANDREGISTER ; 
 int ISSI_COMMANDREGISTER_WRITELOCK ; 
 int ISSI_PAGE_FUNCTION ; 
 int ISSI_PAGE_LEDCONTROL ; 
 int ISSI_PAGE_PWM ; 
 int ISSI_REG_CONFIGURATION ; 
 int ISSI_REG_GLOBALCURRENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(uint8_t addr) {
    // In order to avoid the LEDs being driven with garbage data
    // in the LED driver's PWM registers, shutdown is enabled last.
    // Set up the mode and other settings, clear the PWM registers,
    // then disable software shutdown.

    // Unlock the command register.
    FUNC0(addr, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);

    // Select PG0
    FUNC0(addr, ISSI_COMMANDREGISTER, ISSI_PAGE_LEDCONTROL);
    // Turn off all LEDs.
    for (int i = 0x00; i <= 0x17; i++) {
        FUNC0(addr, i, 0x00);
    }

    // Unlock the command register.
    FUNC0(addr, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);

    // Select PG1
    FUNC0(addr, ISSI_COMMANDREGISTER, ISSI_PAGE_PWM);
    // Set PWM on all LEDs to 0
    // No need to setup Breath registers to PWM as that is the default.
    for (int i = 0x00; i <= 0xBF; i++) {
        FUNC0(addr, i, 0x00);
    }

    // Unlock the command register.
    FUNC0(addr, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);

    // Select PG3
    FUNC0(addr, ISSI_COMMANDREGISTER, ISSI_PAGE_FUNCTION);
    // Set global current to maximum.
    FUNC0(addr, ISSI_REG_GLOBALCURRENT, 0xFF);
    // Disable software shutdown.
    FUNC0(addr, ISSI_REG_CONFIGURATION, 0x01);

// Wait 10ms to ensure the device has woken up.
#ifdef __AVR__
    _delay_ms(10);
#else
    FUNC2(10);
#endif
}