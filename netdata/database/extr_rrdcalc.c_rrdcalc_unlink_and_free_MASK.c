#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  avl ;
struct TYPE_8__ {char* chart; char* name; struct TYPE_8__* next; scalar_t__ rrdset; } ;
struct TYPE_7__ {int /*<<< orphan*/  alarms_idx_name; int /*<<< orphan*/  alarms_idx_health_log; int /*<<< orphan*/  hostname; TYPE_2__* alarms; } ;
typedef  TYPE_1__ RRDHOST ;
typedef  TYPE_2__ RRDCALC ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(RRDHOST *host, RRDCALC *rc) {
    if(FUNC6(!rc)) return;

    FUNC2(D_HEALTH, "Health removing alarm '%s.%s' of host '%s'", rc->chart?rc->chart:"NOCHART", rc->name, host->hostname);

    // unlink it from RRDSET
    if(rc->rrdset) FUNC5(rc);

    // unlink it from RRDHOST
    if(FUNC6(rc == host->alarms))
        host->alarms = rc->next;
    else {
        RRDCALC *t;
        for(t = host->alarms; t && t->next != rc; t = t->next) ;
        if(t) {
            t->next = rc->next;
            rc->next = NULL;
        }
        else
            FUNC3("Cannot unlink alarm '%s.%s' from host '%s': not found", rc->chart?rc->chart:"NOCHART", rc->name, host->hostname);
    }

    RRDCALC *rdcmp = (RRDCALC *) FUNC1(&(host)->alarms_idx_health_log, (avl *)rc);
    if (rdcmp) {
        rdcmp = (RRDCALC *) FUNC0(&(host)->alarms_idx_health_log, (avl *)rc);
        if (!rdcmp) {
            FUNC3("Cannot remove the health alarm index from health_log");
        }
    }

    rdcmp = (RRDCALC *) FUNC1(&(host)->alarms_idx_name, (avl *)rc);
    if (rdcmp) {
        rdcmp = (RRDCALC *) FUNC0(&(host)->alarms_idx_name, (avl *)rc);
        if (!rdcmp) {
            FUNC3("Cannot remove the health alarm index from idx_name");
        }
    }

    FUNC4(rc);
}