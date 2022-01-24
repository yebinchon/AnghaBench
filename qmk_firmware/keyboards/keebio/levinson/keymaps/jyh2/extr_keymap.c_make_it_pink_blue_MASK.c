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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void) {
    uint16_t blue_hue = 210;
    uint16_t pink_hue = 315;

    /* key is pressed */
    uint16_t hue = FUNC0();
    uint8_t sat = FUNC1();
    uint8_t val = FUNC2();

    if (hue != blue_hue)
        FUNC3(blue_hue, sat, val);
    else
        FUNC3(pink_hue, sat, val);
}