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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 scalar_t__ MATRIX_ROWS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

uint8_t FUNC2(void) {
    uint8_t count = 0;
    for (int8_t r = MATRIX_ROWS - 1; r >= 0; --r) {
        count += FUNC0(FUNC1(r));
    }
    return count;
}