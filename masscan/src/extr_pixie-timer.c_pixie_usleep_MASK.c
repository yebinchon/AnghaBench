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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  ts ;
struct timespec {int tv_sec; int tv_nsec; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*,struct timespec*,int) ; 
 int FUNC1 (struct timespec*,struct timespec*) ; 

void
FUNC2(uint64_t microseconds)
{
    struct timespec ts;
    struct timespec remaining;
    int err;

    ts.tv_sec  =  microseconds/1000000;
    ts.tv_nsec = (microseconds%1000000) * 1000;

again:
    err = FUNC1(&ts, &remaining);
    if (err == -1 && errno == EINTR) {
        FUNC0(&ts, &remaining, sizeof(ts));
        goto again;
    }

    //usleep(microseconds);
}