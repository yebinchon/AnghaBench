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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  debounce_counter_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBOUNCE_ELAPSED ; 
 int MATRIX_COLS ; 
 int /*<<< orphan*/ * debounce_counters ; 
 scalar_t__ FUNC0 (int) ; 

void FUNC1(uint8_t num_rows) {
    debounce_counters = (debounce_counter_t *)FUNC0(num_rows * MATRIX_COLS * sizeof(debounce_counter_t));
    int i             = 0;
    for (uint8_t r = 0; r < num_rows; r++) {
        for (uint8_t c = 0; c < MATRIX_COLS; c++) {
            debounce_counters[i++] = DEBOUNCE_ELAPSED;
        }
    }
}