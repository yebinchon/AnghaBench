#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int /*<<< orphan*/  counter_done; TYPE_1__ last_collected_time; } ;
typedef  TYPE_2__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline void FUNC6(RRDSET *st) {
//    usec_t update_every_ut = st->update_every * USEC_PER_SEC; // st->update_every in microseconds
//
//    if(unlikely(st->usec_since_last_update > update_every_ut * remote_clock_resync_iterations)) {
//        error("Chart '%s' was last collected %llu usec before. Resetting it.", st->id, st->usec_since_last_update);
//        rrdset_reset(st);
//        st->usec_since_last_update = update_every_ut;
//    }

    if(FUNC5(!st->last_collected_time.tv_sec)) {
        // it is the first entry
        // set the last_collected_time to now
        FUNC1(st);
    }
    else {
        // it is not the first entry
        // calculate the proper last_collected_time, using usec_since_last_update
        FUNC4(st);
    }

    st->counter_done++;

    FUNC2(st);
    FUNC0(st);
    FUNC3(st);
}