#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {scalar_t__ led_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PWMD4 ; 
 TYPE_1__ keyboard_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pwmCFG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(void) {
    FUNC6(&PWMD4, &pwmCFG);

    // set up defaults
    FUNC4((uint8_t)keyboard_config.led_level * 255 / 4 );
    FUNC1(GPIOB, 8, FUNC0(2));
    FUNC2((uint8_t)keyboard_config.led_level * 255 / 4 );
    FUNC1(GPIOB, 9, FUNC0(2));


    // turn LEDs off by default
    FUNC3();
    FUNC5();
}