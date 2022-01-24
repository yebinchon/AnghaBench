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
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PAL_MODE_STM32_ALTERNATE_PUSHPULL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void){
      /* MOSI pin*/
    FUNC3(GPIOB, 15, PAL_MODE_STM32_ALTERNATE_PUSHPULL);
    FUNC1();
    FUNC4(500);
    FUNC0();

#ifdef RGBLIGHT_ENABLE
    leds_init();
#endif
}