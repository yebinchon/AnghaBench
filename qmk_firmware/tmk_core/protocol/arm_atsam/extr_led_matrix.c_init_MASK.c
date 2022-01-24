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
 int /*<<< orphan*/  DC_LED_MATRIX_INIT_BEGIN ; 
 int /*<<< orphan*/  DC_LED_MATRIX_INIT_COMPLETE ; 
 scalar_t__ gcr_min_counter ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ v_5v_cat_hit ; 

void FUNC3(void) {
    FUNC0(DC_LED_MATRIX_INIT_BEGIN);

    FUNC1();

    FUNC2();

    gcr_min_counter = 0;
    v_5v_cat_hit    = 0;

    FUNC0(DC_LED_MATRIX_INIT_COMPLETE);
}