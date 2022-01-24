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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debounce ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void) {
    FUNC2()    ;   
    FUNC3()   ;
    FUNC0()   ;
    FUNC1()   ;
    FUNC4() ;
    
    // initialize matrix state: all keys off
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        matrix[i]            = 0;
#       if (DEBOUNCE > 0)
        matrix_debounce  [i] = 0;
#       endif
    }

    FUNC5() ;
}