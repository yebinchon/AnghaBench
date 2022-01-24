#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  brightness; } ;
struct TYPE_7__ {int h; int s; int /*<<< orphan*/  v; } ;
struct TYPE_6__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ RGB ;
typedef  TYPE_2__ HSV ;

/* Variables and functions */
 int BACKLIGHT_LED_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ g_config ; 
 int g_tick ; 
 TYPE_1__ FUNC1 (TYPE_2__) ; 
 int FUNC2 () ; 

void FUNC3( bool initialize )
{
    HSV hsv;
    RGB rgb;

    // Change one LED every tick
    uint8_t led_to_change = ( g_tick & 0x000 ) == 0 ? FUNC2() % BACKLIGHT_LED_COUNT : 255;

    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {
        // If initialize, all get set to random colors
        // If not, all but one will stay the same as before.
        if ( initialize || i == led_to_change )
        {
            hsv.h = FUNC2() & 0xFF;
            hsv.s = FUNC2() & 0xFF;
            // Override brightness with global brightness control
            hsv.v = g_config.brightness;;

            rgb = FUNC1( hsv );
            FUNC0( i, rgb.r, rgb.g, rgb.b );
        }
    }
}