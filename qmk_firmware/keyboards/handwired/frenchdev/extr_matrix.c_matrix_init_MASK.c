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
 int debug_enable ; 
 int debug_keyboard ; 
 int debug_matrix ; 
 int debug_mouse ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  mcp23018_status ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
    // initialize row and col
    debug_enable = true;
    debug_matrix = true;
    debug_keyboard = true;
    debug_mouse = true;

    mcp23018_status = FUNC1();


    FUNC3();
    FUNC0();

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }

    FUNC2();
}