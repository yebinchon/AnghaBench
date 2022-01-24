#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {int effect_speed; int /*<<< orphan*/  brightness; } ;
struct TYPE_10__ {int h; int s; int /*<<< orphan*/  v; } ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ RGB ;
typedef  TYPE_2__ Point ;
typedef  TYPE_3__ HSV ;

/* Variables and functions */
 int BACKLIGHT_LED_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ g_config ; 
 int g_tick ; 
 TYPE_1__ FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 

void FUNC3(void)
{
    uint8_t offset = ( g_tick << g_config.effect_speed ) & 0xFF;
    HSV hsv = { .h = 0, .s = 255, .v = g_config.brightness };
    RGB rgb;
    Point point;
    for ( int i=0; i<BACKLIGHT_LED_COUNT; i++ )
    {
        FUNC2( i, &point );
        // Relies on hue being 8-bit and wrapping
        hsv.h = point.x + offset;
        hsv.s = point.y;
        rgb = FUNC1( hsv );
        FUNC0( i, rgb.r, rgb.g, rgb.b );
    }
}