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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int g_tick ; 

void FUNC1(void)
{
    // Mask out bits 4 and 5
    // This 2-bit value will stay the same for 16 ticks.
    switch ( (g_tick & 0x30) >> 4 )
    {
        case 0:
        {
            FUNC0( 255, 0, 0 );
            break;
        }
        case 1:
        {
            FUNC0( 0, 255, 0 );
            break;
        }
        case 2:
        {
            FUNC0( 0, 0, 255 );
            break;
        }
        case 3:
        {
            FUNC0( 255, 255, 255 );
            break;
        }
    }
}