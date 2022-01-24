#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  rrdset; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_3__* alarms; } ;
struct TYPE_9__ {TYPE_2__* rrdhost; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;
typedef  TYPE_3__ RRDCALC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

inline void FUNC3(RRDSET *st) {
    RRDHOST *host = st->rrdhost;
    // debug(D_HEALTH, "find matching alarms for chart '%s'", st->id);

    RRDCALC *rc;
    for(rc = host->alarms; rc ; rc = rc->next) {
        if(FUNC2(rc->rrdset))
            continue;

        if(FUNC2(FUNC0(rc, st)))
            FUNC1(st, rc);
    }
}