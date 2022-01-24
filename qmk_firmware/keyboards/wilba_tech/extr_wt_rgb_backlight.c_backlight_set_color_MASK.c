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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( int index, uint8_t red, uint8_t green, uint8_t blue )
{
#if defined(RGB_BACKLIGHT_M6_B)
    IS31FL3218_set_color( index, red, green, blue );
#elif defined(RGB_BACKLIGHT_HS60) || defined(RGB_BACKLIGHT_NK65)
    IS31FL3733_set_color( index, red, green, blue );
#else
    FUNC1( index, red, green, blue );
#endif
}