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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pin_E14 ; 
 int /*<<< orphan*/  pin_E15 ; 

void FUNC2(void) {
    // set SPI flash WP and HOLD pins high
    FUNC0(pin_E14);
    FUNC0(pin_E15);
    FUNC1(pin_E14, 1);
    FUNC1(pin_E15, 1);
}