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
 int /*<<< orphan*/  DDRB ; 
 int /*<<< orphan*/  DDRC ; 
 int /*<<< orphan*/  PORTB ; 
 int /*<<< orphan*/  PORTC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{
    FUNC2();

#ifdef AUDIO_ENABLE
    // audio_init() sets PB5 to output and drives it low, which breaks our matrix
    // so reset PB5 to input
    cbi(DDRB, 5);
    sbi(PORTB, 5);
#else
    // If we're not using the audio pin, drive it low
    FUNC3(DDRC, 6);
    FUNC0(PORTC, 6);
#endif

#ifdef ISSI_ENABLE
    issi_init();
#endif
}