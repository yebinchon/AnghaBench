#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct timeval {int dummy; } ;
struct TYPE_2__ {scalar_t__ rrd_update_every; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 scalar_t__ CPU_IDLEJITTER_SLEEP_TIME_MS ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_IDLEJITTER ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 scalar_t__ USEC_PER_MS ; 
 scalar_t__ USEC_PER_SEC ; 
 scalar_t__ FUNC0 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  cpuidlejitter_main_cleanup ; 
 scalar_t__ FUNC2 (struct timeval*,struct timeval*) ; 
 scalar_t__ FUNC3 (unsigned long long) ; 
 TYPE_1__* localhost ; 
 scalar_t__ netdata_exit ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

void *FUNC14(void *ptr) {
    FUNC5(cpuidlejitter_main_cleanup, ptr);

    usec_t sleep_ut = FUNC0("plugin:idlejitter", "loop time in ms", CPU_IDLEJITTER_SLEEP_TIME_MS) * USEC_PER_MS;
    if(sleep_ut <= 0) {
        FUNC1("plugin:idlejitter", "loop time in ms", CPU_IDLEJITTER_SLEEP_TIME_MS);
        sleep_ut = CPU_IDLEJITTER_SLEEP_TIME_MS * USEC_PER_MS;
    }

    RRDSET *st = FUNC9(
            "system"
            , "idlejitter"
            , NULL
            , "idlejitter"
            , NULL
            , "CPU Idle Jitter"
            , "microseconds lost/s"
            , "idlejitter.plugin"
            , NULL
            , NETDATA_CHART_PRIO_SYSTEM_IDLEJITTER
            , localhost->rrd_update_every
            , RRDSET_TYPE_AREA
    );
    RRDDIM *rd_min = FUNC7(st, "min", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
    RRDDIM *rd_max = FUNC7(st, "max", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
    RRDDIM *rd_avg = FUNC7(st, "average", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);

    usec_t update_every_ut = localhost->rrd_update_every * USEC_PER_SEC;
    struct timeval before, after;
    unsigned long long counter;

    for(counter = 0; 1 ;counter++) {
        int iterations = 0;
        usec_t error_total = 0,
                error_min = 0,
                error_max = 0,
                elapsed = 0;

        if(netdata_exit) break;

        while(elapsed < update_every_ut) {
            FUNC6(&before);
            FUNC12(sleep_ut);
            FUNC6(&after);

            usec_t dt = FUNC2(&after, &before);
            elapsed += dt;

            usec_t error = dt - sleep_ut;
            error_total += error;

            if(FUNC13(!iterations))
                error_min = error;
            else if(error < error_min)
                error_min = error;

            if(error > error_max)
                error_max = error;

            iterations++;
        }

        if(netdata_exit) break;

        if(iterations) {
            if (FUNC3(counter)) FUNC11(st);
            FUNC8(st, rd_min, error_min);
            FUNC8(st, rd_max, error_max);
            FUNC8(st, rd_avg, error_total / iterations);
            FUNC10(st);
        }
    }

    FUNC4(1);
    return NULL;
}