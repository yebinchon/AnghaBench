#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* families; struct TYPE_9__* hosts; struct TYPE_9__* contexts; struct TYPE_9__* charts; struct TYPE_9__* alarms; int /*<<< orphan*/  families_pattern; int /*<<< orphan*/  hosts_pattern; int /*<<< orphan*/  contexts_pattern; int /*<<< orphan*/  charts_pattern; int /*<<< orphan*/  alarms_pattern; struct TYPE_9__* next; } ;
typedef  TYPE_1__ SILENCER ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(SILENCER *t) {
    if (!t) return;
    if (t->next) FUNC3(t->next);
    FUNC0(D_HEALTH, "HEALTH command API: Freeing silencer %s:%s:%s:%s:%s", t->alarms,
          t->charts, t->contexts, t->hosts, t->families);
    FUNC2(t->alarms_pattern);
    FUNC2(t->charts_pattern);
    FUNC2(t->contexts_pattern);
    FUNC2(t->hosts_pattern);
    FUNC2(t->families_pattern);
    FUNC1(t->alarms);
    FUNC1(t->charts);
    FUNC1(t->contexts);
    FUNC1(t->hosts);
    FUNC1(t->families);
    FUNC1(t);
    return;
}