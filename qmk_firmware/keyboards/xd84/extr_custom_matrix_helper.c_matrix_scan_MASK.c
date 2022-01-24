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
 int /*<<< orphan*/  MATRIX_ROWS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  raw_matrix ; 

__attribute__ ((weak))
uint8_t FUNC3(void) {
  bool changed = FUNC0(raw_matrix);

  FUNC1(raw_matrix, matrix, MATRIX_ROWS, changed);

  FUNC2();
  return 1;
}