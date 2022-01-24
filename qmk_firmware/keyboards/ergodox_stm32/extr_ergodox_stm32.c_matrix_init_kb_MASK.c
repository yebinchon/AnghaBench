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
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  PAL_MODE_OUTPUT_PUSHPULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
    // Init LED Ports
    FUNC2(GPIOA, 10, PAL_MODE_OUTPUT_PUSHPULL); // LED 1
    FUNC2(GPIOA, 9, PAL_MODE_OUTPUT_PUSHPULL); // LED 2
    FUNC2(GPIOA, 8, PAL_MODE_OUTPUT_PUSHPULL); // LED 3

    FUNC0();

    FUNC1();
}