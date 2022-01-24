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
 scalar_t__ MATRIX_COLS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  matrix ; 
 scalar_t__* matrix_debouncing ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

uint8_t FUNC6(void)
{
  bool changed = false;
  for (uint8_t col = 0; col < MATRIX_COLS; col++) {
    FUNC4(col);
    FUNC5(30);
    matrix_row_t rows = FUNC3();
    for (uint8_t row = 0; row < FUNC1(); row++) {
      bool prev_bit = matrix_debouncing[row] & ((matrix_row_t)1<<col);
      bool curr_bit = rows & (1<<row);
      if ((changed |= prev_bit != curr_bit)) {
	    matrix_debouncing[row] ^= (matrix_row_t) 1 << col;
      }
    }
  }

  FUNC0(matrix_debouncing, matrix, FUNC1(), changed);
  FUNC2();

  return (uint8_t)changed;
}