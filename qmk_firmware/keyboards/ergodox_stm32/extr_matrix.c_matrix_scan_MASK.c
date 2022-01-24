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
typedef  size_t uint8_t ;

/* Variables and functions */
 size_t MATRIX_ROWS_PER_SIDE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * matrix ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ mcp23017_reset_loop ; 
 scalar_t__ mcp23017_status ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 

uint8_t FUNC6(void) {
  if (mcp23017_status) {
    if (++mcp23017_reset_loop == 0) {
      mcp23017_status = FUNC2();
        if (!mcp23017_status) {
            FUNC1();
        }
    }
  }
  for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
    FUNC4(i);
    FUNC4(i + MATRIX_ROWS_PER_SIDE);

    matrix[i] = FUNC0(i);
    matrix[i + MATRIX_ROWS_PER_SIDE] = FUNC0(i + MATRIX_ROWS_PER_SIDE);

    FUNC5();
  }
  FUNC3();
  return 0;
}