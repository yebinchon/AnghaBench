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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ matrix_row_t ;

/* Variables and functions */
 scalar_t__ DEBOUNCE ; 
 scalar_t__ MATRIX_ROWS ; 
 scalar_t__ debouncing ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

uint8_t FUNC8(void){
  for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
    FUNC4(i);
    FUNC7(30);  // without this wait read unstable value.
    matrix_row_t cols = FUNC3();
    if (matrix_debouncing[i] != cols) {
      matrix_debouncing[i] = cols;
      if (debouncing) {
        FUNC0("bounce!: "); FUNC1(debouncing); FUNC0("\n");
      }
    debouncing = DEBOUNCE;
    }
    FUNC5();
  }

  if (debouncing) {
    if (--debouncing) {
      FUNC6(1);
    } else {
      for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        matrix[i] = matrix_debouncing[i];
      }
    }
  }
  FUNC2();
  return 1;
}