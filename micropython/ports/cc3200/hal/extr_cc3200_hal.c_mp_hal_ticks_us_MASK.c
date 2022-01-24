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
typedef  int uint32_t ;
typedef  int mp_uint_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 

mp_uint_t FUNC5(void) {
    mp_uint_t irq_state = FUNC2();
    uint32_t counter = FUNC1();
    uint32_t milliseconds = FUNC4();
    FUNC3(irq_state);

    uint32_t load = FUNC0();
    counter = load - counter; // Convert from decrementing to incrementing
    return (milliseconds * 1000) + ((counter * 1000) / load);
}