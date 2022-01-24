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
typedef  int matrix_row_t ;

/* Variables and functions */
 scalar_t__ MATRIX_ROWS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* matrix ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

uint8_t FUNC8(void)
{
  FUNC2();

  for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
    FUNC5(i);
    FUNC7(30);  // without this wait read unstable value.
    matrix_row_t mask = FUNC0(i);
    matrix_row_t cols = (FUNC4(i) & mask) | (matrix[i] & ~mask);
    FUNC1(cols ^ matrix[i], i);
    matrix[i] = cols;

    FUNC6();
  }

  FUNC3();

  return 1;
}