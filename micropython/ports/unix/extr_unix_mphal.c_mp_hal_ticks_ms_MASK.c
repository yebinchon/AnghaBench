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
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef  int mp_uint_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 

mp_uint_t FUNC2(void) {
    #if (defined(_POSIX_TIMERS) && _POSIX_TIMERS > 0) && defined(_POSIX_MONOTONIC_CLOCK)
    struct timespec tv;
    clock_gettime(CLOCK_MONOTONIC, &tv);
    return tv.tv_sec * 1000 + tv.tv_nsec / 1000000;
    #else
    struct timeval tv;
    FUNC1(&tv, NULL);
    return tv.tv_sec * 1000 + tv.tv_usec / 1000;
    #endif
}