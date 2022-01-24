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
typedef  int matrix_row_t ;

/* Variables and functions */
 int MATRIX_COLS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int* col_pins ; 

__attribute__((used)) static matrix_row_t FUNC2(void)
{
  matrix_row_t result = 0;
  for(int x = 0; x < MATRIX_COLS; x++) {
    result |= (FUNC1(col_pins[x] >> 4) & FUNC0(col_pins[x] & 0xF)) ? 0 : (1 << x);
  }
  return result;
}