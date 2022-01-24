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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int g_tick ; 
 int FUNC1 () ; 

void FUNC2(bool initialize)
{
    // Change one LED every tick
    uint8_t led_to_change = ( g_tick & 0x000 ) == 0 ? FUNC1() % 96 : 255;

    for ( int i=0; i<96; i++ )
    {
        // If initialize, all get set to random brightness
        // If not, all but one will stay the same as before.
        if ( initialize || i == led_to_change )
        {
            FUNC0(i, FUNC1() & 0xFF );
        }
    }
}