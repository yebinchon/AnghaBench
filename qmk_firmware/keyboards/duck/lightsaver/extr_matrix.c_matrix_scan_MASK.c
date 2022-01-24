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
 scalar_t__ MATRIX_COLS ; 
 scalar_t__ MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ debouncing ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 

uint8_t FUNC10(void) {
  for (uint8_t col = 0; col < MATRIX_COLS; col++) {
    FUNC8(col);
    FUNC1(3);

    uint8_t rows = FUNC7();
    if(col == 0) {
      rows |= FUNC6();
    }
    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
      bool prev_bit = matrix_debouncing[row] & ((matrix_row_t)1<<col);
      bool curr_bit = rows & (1<<row);
      if (prev_bit != curr_bit) {
        matrix_debouncing[row] ^= ((matrix_row_t)1<<col);
        if (debouncing) {
            FUNC2("bounce!: "); FUNC3("%02X", debouncing); FUNC4();
        }        
        debouncing = DEBOUNCE;
      }
    }
    FUNC9();
  }

  if (debouncing) {
    if (--debouncing) {
      FUNC0(1);
    } else {
      for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        matrix[i] = matrix_debouncing[i];
      }
    }
  }

  FUNC5();
  return 1;
}