#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ stype; TYPE_1__* silencers; scalar_t__ all_alarms; } ;
struct TYPE_3__ {int /*<<< orphan*/  families; int /*<<< orphan*/  hosts; int /*<<< orphan*/  contexts; int /*<<< orphan*/  charts; int /*<<< orphan*/  alarms; struct TYPE_3__* next; } ;
typedef  TYPE_1__ SILENCER ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  HEALTH_ALARM_KEY ; 
 int /*<<< orphan*/  HEALTH_CHART_KEY ; 
 int /*<<< orphan*/  HEALTH_CONTEXT_KEY ; 
 int /*<<< orphan*/  HEALTH_FAMILIES_KEY ; 
 int /*<<< orphan*/  HEALTH_HOST_KEY ; 
 scalar_t__ STYPE_DISABLE_ALARMS ; 
 scalar_t__ STYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_2__* silencers ; 

void FUNC4(BUFFER *wb) {
    FUNC0(wb, "{\n\t\"all\": %s,"
                       "\n\t\"type\": \"%s\","
                       "\n\t\"silencers\": [",
                   (silencers->all_alarms)?"true":"false",
                   (silencers->stype == STYPE_NONE)?"None":((silencers->stype == STYPE_DISABLE_ALARMS)?"DISABLE":"SILENCE"));

    SILENCER *silencer;
    int i = 0, j = 0;
    for(silencer = silencers->silencers; silencer ; silencer = silencer->next) {
        if(FUNC3(i)) FUNC1(wb, ",");
        FUNC1(wb, "\n\t\t{");
        j=FUNC2(wb, HEALTH_ALARM_KEY, silencer->alarms, j);
        j=FUNC2(wb, HEALTH_CHART_KEY, silencer->charts, j);
        j=FUNC2(wb, HEALTH_CONTEXT_KEY, silencer->contexts, j);
        j=FUNC2(wb, HEALTH_HOST_KEY, silencer->hosts, j);
        FUNC2(wb, HEALTH_FAMILIES_KEY, silencer->families, j);
        j=0;
        FUNC1(wb, "\n\t\t}");
        i++;
    }
    if(FUNC3(i)) FUNC1(wb, "\n\t");
    FUNC1(wb, "]\n}\n");
}