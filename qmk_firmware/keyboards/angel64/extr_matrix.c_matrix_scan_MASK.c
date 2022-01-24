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

/* Variables and functions */
 int MATRIX_COLS ; 
 int MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  raw_matrix ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

uint8_t FUNC4(void)
{
  bool changed = false;

  // Set row, read cols
  for (uint8_t current_row = 0; current_row < MATRIX_ROWS / 2; current_row++) {
    changed |= FUNC2(raw_matrix, current_row);
  }
  //else
  // Set col, read rows
  for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
    changed |= FUNC3(raw_matrix, current_col);
  }

  FUNC0(raw_matrix, matrix, MATRIX_ROWS, changed);

  FUNC1();
  return (uint8_t)changed;
}