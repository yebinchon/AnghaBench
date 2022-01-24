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
typedef  int /*<<< orphan*/  usec_t ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_UPTIME ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_UPTIME ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(int update_every, usec_t dt) {
    (void)dt;
    struct timespec up_time;

    FUNC0(CLOCK_UPTIME, &up_time);

    // --------------------------------------------------------------------

    static RRDSET *st = NULL;
    static RRDDIM *rd = NULL;

    if(FUNC6(!st)) {
        st = FUNC3(
                "system",
                "uptime",
                NULL,
                "uptime",
                NULL,
                "System Uptime",
                "seconds",
                "freebsd.plugin",
                "uptime",
                NETDATA_CHART_PRIO_SYSTEM_UPTIME,
                update_every,
                RRDSET_TYPE_LINE
        );

        rd = FUNC1(st, "uptime", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else FUNC5(st);

    FUNC2(st, rd, up_time.tv_sec);
    FUNC4(st);

    return 0;
}