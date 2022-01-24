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
typedef  scalar_t__ uint64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

uint64_t
FUNC2(void)
{
    int x;
    struct timespec tv;

#ifdef CLOCK_MONOTONIC_RAW
    x = clock_gettime(CLOCK_MONOTONIC_RAW, &tv);
#else
    x = FUNC0(CLOCK_MONOTONIC, &tv);
#endif
    if (x != 0) {
        FUNC1("clock_gettime() err %d\n", errno);
    }

    return tv.tv_sec * 1000000000 + tv.tv_nsec;
}