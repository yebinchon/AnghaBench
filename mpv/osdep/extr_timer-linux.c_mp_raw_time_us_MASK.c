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
typedef  long long uint64_t ;
struct timespec {long long tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 

uint64_t FUNC2(void)
{
    struct timespec ts;
    if (FUNC1(CLOCK_MONOTONIC, &ts))
        FUNC0();
    return ts.tv_sec * 1000000LL + ts.tv_nsec / 1000;
}