#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  avl ;
struct TYPE_17__ {scalar_t__ hash_chart; int /*<<< orphan*/  foreachcounter; int /*<<< orphan*/  name; int /*<<< orphan*/  chart; int /*<<< orphan*/  spdim; struct TYPE_17__* next; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_15__ {int /*<<< orphan*/  alarms_idx_health_log; TYPE_4__* alarms_with_foreach; } ;
struct TYPE_14__ {scalar_t__ hash_name; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;
typedef  TYPE_3__ RRDDIM ;
typedef  TYPE_4__ RRDCALC ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(RRDDIM *rd, RRDSET *st, RRDHOST *host) {
    RRDCALC *rrdc;
    for (rrdc = host->alarms_with_foreach; rrdc ; rrdc = rrdc->next) {
        if (FUNC7(rrdc->spdim, rd->id) || FUNC7(rrdc->spdim, rd->name)) {
            if (rrdc->hash_chart == st->hash_name || !FUNC8(rrdc->chart, st->name) || !FUNC8(rrdc->chart, st->id)) {
                char *usename = FUNC0(rrdc->name, FUNC9(rrdc->name), rd->name, FUNC9(rd->name));
                if (usename) {
                    if(FUNC6(host, st->name, usename, 0, 0)){
                        FUNC3(usename);
                        continue;
                    }

                    RRDCALC *child = FUNC5(rrdc, host, usename, rd->name);
                    if (child) {
                        FUNC4(host, child);
                        RRDCALC *rdcmp  = (RRDCALC *) FUNC1(&(host)->alarms_idx_health_log,(avl *)child);
                        if (rdcmp != child) {
                            FUNC2("Cannot insert the alarm index ID %s",child->name);
                        }
                    } else {
                        FUNC2("Cannot allocate a new alarm.");
                        rrdc->foreachcounter--;
                    }
                }
            }
        }
    }
}