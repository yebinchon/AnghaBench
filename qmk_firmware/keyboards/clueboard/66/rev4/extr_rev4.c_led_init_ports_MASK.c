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
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  PAL_MODE_OUTPUT_PUSHPULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2() {
    // Set our LED pins as output
    FUNC1(GPIOB, 13, PAL_MODE_OUTPUT_PUSHPULL); // LED1
    FUNC0(GPIOB, 13);
    FUNC1(GPIOB, 14, PAL_MODE_OUTPUT_PUSHPULL); // LED2
    FUNC0(GPIOB, 14);
    FUNC1(GPIOA, 8, PAL_MODE_OUTPUT_PUSHPULL); // LED3
    FUNC0(GPIOA, 8);
    FUNC1(GPIOA, 0, PAL_MODE_OUTPUT_PUSHPULL); // Capslock LED
    FUNC0(GPIOA, 0);
}