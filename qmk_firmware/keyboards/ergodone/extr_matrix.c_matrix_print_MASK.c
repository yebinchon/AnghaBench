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

/* Variables and functions */
 scalar_t__ MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
  FUNC3("\nr/c 0123456789ABCDEF\n");
  for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
    FUNC2(row); FUNC3(": ");
    FUNC1(FUNC0(row));
    FUNC3("\n");
  }
}