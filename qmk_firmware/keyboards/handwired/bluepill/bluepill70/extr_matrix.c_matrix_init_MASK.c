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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t MATRIX_ROWS ; 
 int debug_matrix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void)
{
  // initialize row and col
  FUNC4();
  FUNC2();
  // initialize matrix state: all keys off
  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    matrix_debouncing[i] = 0;
  }
  //debug
  debug_matrix = true;
  FUNC1();
  FUNC5(500);
  FUNC0();

  FUNC3();
}