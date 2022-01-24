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
 int /*<<< orphan*/  DDRC ; 
 int /*<<< orphan*/  PORTC ; 
 int /*<<< orphan*/  WDTO_500MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
    // put your keyboard start-up code here
    // runs once when the firmware starts up
    FUNC2();
    FUNC4(31, 0x00, 0x00, 0x00);  // Caps lock
    FUNC4(32, 0xFF, 0x00, 0x00);  // Layer indicator, start red
#ifndef AUDIO_ENABLE
    // If we're not using the audio pin, drive it low
    FUNC3(DDRC, 6);
    FUNC0(PORTC, 6);
#endif
#ifdef ISSI_ENABLE
    issi_init();
#endif
#ifdef WATCHDOG_ENABLE
    // This is done after turning the layer LED red, if we're caught in a loop
    // we should get a flashing red light
    wdt_enable(WDTO_500MS);
#endif
}