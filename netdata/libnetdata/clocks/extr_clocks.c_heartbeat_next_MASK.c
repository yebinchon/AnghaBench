#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
struct TYPE_3__ {int monotonic; unsigned long long realtime; } ;
typedef  TYPE_1__ heartbeat_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

usec_t FUNC6(heartbeat_t *hb, usec_t tick) {
    heartbeat_t now;
    now.monotonic = FUNC2();
    now.realtime  = FUNC3();

    usec_t next_monotonic = now.monotonic - (now.monotonic % tick) + tick;

    while(now.monotonic < next_monotonic) {
        FUNC4(next_monotonic - now.monotonic);
        now.monotonic = FUNC2();
        now.realtime  = FUNC3();
    }

    if(FUNC1(hb->realtime != 0ULL)) {
        usec_t dt_monotonic = now.monotonic - hb->monotonic;
        usec_t dt_realtime  = now.realtime - hb->realtime;

        hb->monotonic = now.monotonic;
        hb->realtime  = now.realtime;

        if(FUNC5(dt_monotonic >= tick + tick / 2)) {
            errno = 0;
            FUNC0("heartbeat missed %llu monotonic microseconds", dt_monotonic - tick);
        }

        return dt_realtime;
    }
    else {
        hb->monotonic = now.monotonic;
        hb->realtime  = now.realtime;
        return 0ULL;
    }
}