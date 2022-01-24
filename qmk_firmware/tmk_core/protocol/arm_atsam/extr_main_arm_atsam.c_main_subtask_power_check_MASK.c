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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_5V ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 double v_5v ; 
 double v_5v_avg ; 

void FUNC3(void) {
    static uint64_t next_5v_checkup = 0;

    if (FUNC2() > next_5v_checkup) {
        next_5v_checkup = FUNC2() + 5;

        v_5v     = FUNC0(ADC_5V);
        v_5v_avg = 0.9 * v_5v_avg + 0.1 * v_5v;

#ifdef RGB_MATRIX_ENABLE
        gcr_compute();
#endif
    }
}