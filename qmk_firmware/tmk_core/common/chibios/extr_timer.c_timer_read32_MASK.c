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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ systime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ current_time_ms ; 
 scalar_t__ last_systime ; 
 scalar_t__ overflow ; 

uint32_t FUNC3(void) {
    // Note: We assume that the timer update is called at least once betweeen every wrap around of the system time
    systime_t current_systime = FUNC2();
    systime_t elapsed         = current_systime - last_systime + overflow;
    uint32_t  elapsed_ms      = FUNC1(elapsed);
    current_time_ms += elapsed_ms;
    overflow     = elapsed - FUNC0(elapsed_ms);
    last_systime = current_systime;

    return current_time_ms;
}