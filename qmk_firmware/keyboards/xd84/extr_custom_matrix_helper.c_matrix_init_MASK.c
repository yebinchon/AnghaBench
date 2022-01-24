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
 size_t MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__* matrix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* raw_matrix ; 

__attribute__ ((weak))
void FUNC3(void) {

  FUNC0();

  // initialize matrix state: all keys off
  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    raw_matrix[i] = 0;
    matrix[i] = 0;
  }

  FUNC1(MATRIX_ROWS);

  FUNC2();
}