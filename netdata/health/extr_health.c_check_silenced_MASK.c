#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; char* chart; TYPE_1__* rrdset; } ;
struct TYPE_9__ {int /*<<< orphan*/  families; int /*<<< orphan*/  hosts; int /*<<< orphan*/  contexts; int /*<<< orphan*/  charts; int /*<<< orphan*/  alarms; scalar_t__ families_pattern; scalar_t__ charts_pattern; scalar_t__ hosts_pattern; scalar_t__ contexts_pattern; scalar_t__ alarms_pattern; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ stype; TYPE_3__* silencers; } ;
struct TYPE_7__ {char* context; char* family; } ;
typedef  scalar_t__ SILENCE_TYPE ;
typedef  TYPE_2__ SILENCERS ;
typedef  TYPE_3__ SILENCER ;
typedef  TYPE_4__ RRDCALC ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 scalar_t__ STYPE_DISABLE_ALARMS ; 
 scalar_t__ STYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (int) ; 

SILENCE_TYPE FUNC3(RRDCALC *rc, char* host, SILENCERS *silencers) {
    SILENCER *s;
    FUNC0(D_HEALTH, "Checking if alarm was silenced via the command API. Alarm info name:%s context:%s chart:%s host:%s family:%s",
            rc->name, (rc->rrdset)?rc->rrdset->context:"", rc->chart, host, (rc->rrdset)?rc->rrdset->family:"");

    for (s = silencers->silencers; s!=NULL; s=s->next){
        if (
                (!s->alarms_pattern || (rc->name && s->alarms_pattern && FUNC1(s->alarms_pattern,rc->name))) &&
                (!s->contexts_pattern || (rc->rrdset && rc->rrdset->context && s->contexts_pattern && FUNC1(s->contexts_pattern,rc->rrdset->context))) &&
                (!s->hosts_pattern || (host && s->hosts_pattern && FUNC1(s->hosts_pattern,host))) &&
                (!s->charts_pattern || (rc->chart && s->charts_pattern && FUNC1(s->charts_pattern,rc->chart))) &&
                (!s->families_pattern || (rc->rrdset && rc->rrdset->family && s->families_pattern && FUNC1(s->families_pattern,rc->rrdset->family)))
                ) {
            FUNC0(D_HEALTH, "Alarm matches command API silence entry %s:%s:%s:%s:%s", s->alarms,s->charts, s->contexts, s->hosts, s->families);
            if (FUNC2(silencers->stype == STYPE_NONE)) {
                FUNC0(D_HEALTH, "Alarm %s matched a silence entry, but no SILENCE or DISABLE command was issued via the command API. The match has no effect.", rc->name);
            } else {
                FUNC0(D_HEALTH, "Alarm %s via the command API - name:%s context:%s chart:%s host:%s family:%s"
                        , (silencers->stype == STYPE_DISABLE_ALARMS)?"Disabled":"Silenced"
                        , rc->name
                        , (rc->rrdset)?rc->rrdset->context:""
                        , rc->chart
                        , host
                        , (rc->rrdset)?rc->rrdset->family:""
                        );
            }
            return silencers->stype;
        }
    }
    return STYPE_NONE;
}