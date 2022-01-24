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
typedef  int collected_number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 

__attribute__((used)) static inline collected_number FUNC2(void) {
#ifdef CLOCK_BOOTTIME_IS_AVAILABLE
    return now_boottime_usec() / 1000;
#else
    FUNC0("uptime cannot be read from CLOCK_BOOTTIME on this system.");
    return 0;
#endif
}