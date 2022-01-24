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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

inline int FUNC3(clockid_t clk_id, struct timespec *ts) {
    struct timeval tv;
    if(FUNC2(FUNC1(&tv, NULL) == -1)) {
        FUNC0("gettimeofday() failed.");
        return -1;
    }
    ts->tv_sec = tv.tv_sec;
    ts->tv_nsec = (tv.tv_usec % USEC_PER_SEC) * NSEC_PER_USEC;
    return 0;
}