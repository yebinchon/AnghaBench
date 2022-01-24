#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_8__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int counter_done; int update_every; TYPE_1__ last_collected_time; } ;
struct TYPE_9__ {char* chart; scalar_t__ next_update; scalar_t__ before; scalar_t__ after; int /*<<< orphan*/  name; TYPE_3__* rrdset; int /*<<< orphan*/  update_every; } ;
typedef  TYPE_2__ RRDCALC ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  RRDSET_FLAG_ENABLED ; 
 int /*<<< orphan*/  RRDSET_FLAG_OBSOLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(RRDCALC *rc, time_t now, time_t *next_run) {
    if(FUNC5(!rc->rrdset)) {
        FUNC1(D_HEALTH, "Health not running alarm '%s.%s'. It is not linked to a chart.", rc->chart?rc->chart:"NOCHART", rc->name);
        return 0;
    }

    if(FUNC5(rc->next_update > now)) {
        if (FUNC5(*next_run > rc->next_update)) {
            // update the next_run time of the main loop
            // to run this alarm precisely the time required
            *next_run = rc->next_update;
        }

        FUNC1(D_HEALTH, "Health not examining alarm '%s.%s' yet (will do in %d secs).", rc->chart?rc->chart:"NOCHART", rc->name, (int) (rc->next_update - now));
        return 0;
    }

    if(FUNC5(!rc->update_every)) {
        FUNC1(D_HEALTH, "Health not running alarm '%s.%s'. It does not have an update frequency", rc->chart?rc->chart:"NOCHART", rc->name);
        return 0;
    }

    if(FUNC5(FUNC3(rc->rrdset, RRDSET_FLAG_OBSOLETE))) {
        FUNC1(D_HEALTH, "Health not running alarm '%s.%s'. The chart has been marked as obsolete", rc->chart?rc->chart:"NOCHART", rc->name);
        return 0;
    }

    if(FUNC5(!FUNC3(rc->rrdset, RRDSET_FLAG_ENABLED))) {
        FUNC1(D_HEALTH, "Health not running alarm '%s.%s'. The chart is not enabled", rc->chart?rc->chart:"NOCHART", rc->name);
        return 0;
    }

    if(FUNC5(!rc->rrdset->last_collected_time.tv_sec || rc->rrdset->counter_done < 2)) {
        FUNC1(D_HEALTH, "Health not running alarm '%s.%s'. Chart is not fully collected yet.", rc->chart?rc->chart:"NOCHART", rc->name);
        return 0;
    }

    int update_every = rc->rrdset->update_every;
    time_t first = FUNC2(rc->rrdset);
    time_t last = FUNC4(rc->rrdset);

    if(FUNC5(now + update_every < first /* || now - update_every > last */)) {
        FUNC1(D_HEALTH
              , "Health not examining alarm '%s.%s' yet (wanted time is out of bounds - we need %lu but got %lu - %lu)."
              , rc->chart ? rc->chart : "NOCHART", rc->name, (unsigned long) now, (unsigned long) first
              , (unsigned long) last);
        return 0;
    }

    if(FUNC0(rc)) {
        time_t needed = now + rc->before + rc->after;

        if(needed + update_every < first || needed - update_every > last) {
            FUNC1(D_HEALTH
                  , "Health not examining alarm '%s.%s' yet (not enough data yet - we need %lu but got %lu - %lu)."
                  , rc->chart ? rc->chart : "NOCHART", rc->name, (unsigned long) needed, (unsigned long) first
                  , (unsigned long) last);
            return 0;
        }
    }

    return 1;
}