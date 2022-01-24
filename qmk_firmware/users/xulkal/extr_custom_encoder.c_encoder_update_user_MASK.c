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
typedef  size_t uint8_t ;

/* Variables and functions */
 size_t RGB_OLED_MENU ; 
 int /*<<< orphan*/ ** encoders ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t rgb_encoder_state ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(uint8_t index, bool clockwise)
{
    if (!FUNC0())
        return;

#ifdef RGB_OLED_MENU
    if (index == RGB_OLED_MENU)
        (*rgb_functions[rgb_encoder_state][clockwise])();
    else
#endif // RGB_OLED_MENU
        FUNC4(FUNC1(&encoders[index][clockwise]));
}