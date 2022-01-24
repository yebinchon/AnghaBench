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
 int /*<<< orphan*/  B0 ; 
 int /*<<< orphan*/  D5 ; 
 size_t MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* matrix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* raw_matrix ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void) {

    // initialize key pins
    FUNC1();

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        raw_matrix[i] = 0;
        matrix[i] = 0;
    }

    FUNC0(MATRIX_ROWS);

    FUNC2();

    FUNC3(D5);
   FUNC4(D5);

   FUNC3(B0);
   FUNC4(B0);
}