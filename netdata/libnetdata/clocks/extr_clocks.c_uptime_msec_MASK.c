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
typedef  scalar_t__ collected_number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  read_proc_uptime_ff ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 

static inline collected_number FUNC6(char *filename){
    static int use_boottime = -1;

    if(FUNC4(use_boottime == -1)) {
        collected_number uptime_boottime = FUNC5();
        collected_number uptime_proc     = FUNC3(filename);

        long long delta = (long long)uptime_boottime - (long long)uptime_proc;
        if(delta < 0) delta = -delta;

        if(delta <= 1000 && uptime_boottime != 0) {
            FUNC2(read_proc_uptime_ff);
            FUNC1("Using now_boottime_usec() for uptime (dt is %lld ms)", delta);
            use_boottime = 1;
        }
        else if(uptime_proc != 0) {
            FUNC1("Using /proc/uptime for uptime (dt is %lld ms)", delta);
            use_boottime = 0;
        }
        else {
            FUNC0("Cannot find any way to read uptime on this system.");
            return 1;
        }
    }

    collected_number uptime;
    if(use_boottime)
        uptime = FUNC5();
    else
        uptime = FUNC3(filename);

    return uptime;
}