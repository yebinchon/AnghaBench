#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int next_event_id; char const* chart; char* name; char const* exec; char const* recipient; char const* source; char const* units; char const* info; TYPE_3__* critical; TYPE_2__* warning; TYPE_1__* calculation; int /*<<< orphan*/  options; int /*<<< orphan*/  update_every; int /*<<< orphan*/  before; int /*<<< orphan*/  after; int /*<<< orphan*/  group; int /*<<< orphan*/  crit_repeat_every; int /*<<< orphan*/  warn_repeat_every; scalar_t__ last_repeat; int /*<<< orphan*/  delay_multiplier; int /*<<< orphan*/  delay_max_duration; int /*<<< orphan*/  delay_down_duration; int /*<<< orphan*/  delay_up_duration; void* old_value; void* value; int /*<<< orphan*/  red; int /*<<< orphan*/  green; scalar_t__ foreachcounter; int /*<<< orphan*/ * foreachdim; void* dimensions; void* hash_chart; void* hash; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  source; } ;
struct TYPE_9__ {int /*<<< orphan*/  source; } ;
struct TYPE_8__ {int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  TYPE_4__ RRDCALC ;

/* Variables and functions */
 void* NAN ; 
 TYPE_4__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int*) ; 
 void* FUNC4 (char const*) ; 
 void* FUNC5 (char const*) ; 

inline RRDCALC *FUNC6(RRDCALC *rc, RRDHOST *host, const char *name, const char *dimension) {
    RRDCALC *newrc = FUNC0(1, sizeof(RRDCALC));

    newrc->next_event_id = 1;
    newrc->id = FUNC3(host, rc->chart, name, &rc->next_event_id);
    newrc->name = (char *)name;
    newrc->hash = FUNC4(newrc->name);
    newrc->chart = FUNC5(rc->chart);
    newrc->hash_chart = FUNC4(rc->chart);

    newrc->dimensions = FUNC5(dimension);
    newrc->foreachdim = NULL;
    rc->foreachcounter++;
    newrc->foreachcounter = rc->foreachcounter;

    newrc->green = rc->green;
    newrc->red = rc->red;
    newrc->value = NAN;
    newrc->old_value = NAN;

    newrc->delay_up_duration = rc->delay_up_duration;
    newrc->delay_down_duration = rc->delay_down_duration;
    newrc->delay_max_duration = rc->delay_max_duration;
    newrc->delay_multiplier = rc->delay_multiplier;

    newrc->last_repeat = 0;
    newrc->warn_repeat_every = rc->warn_repeat_every;
    newrc->crit_repeat_every = rc->crit_repeat_every;

    newrc->group = rc->group;
    newrc->after = rc->after;
    newrc->before = rc->before;
    newrc->update_every = rc->update_every;
    newrc->options = rc->options;

    if(rc->exec) newrc->exec = FUNC5(rc->exec);
    if(rc->recipient) newrc->recipient = FUNC5(rc->recipient);
    if(rc->source) newrc->source = FUNC5(rc->source);
    if(rc->units) newrc->units = FUNC5(rc->units);
    if(rc->info) newrc->info = FUNC5(rc->info);

    if(rc->calculation) {
        newrc->calculation = FUNC2(rc->calculation->source, NULL, NULL);
        if(!newrc->calculation)
            FUNC1("Health alarm '%s.%s': failed to parse calculation expression '%s'", rc->chart, rc->name, rc->calculation->source);
    }

    if(rc->warning) {
        newrc->warning = FUNC2(rc->warning->source, NULL, NULL);
        if(!newrc->warning)
            FUNC1("Health alarm '%s.%s': failed to re-parse warning expression '%s'", rc->chart, rc->name, rc->warning->source);
    }

    if(rc->critical) {
        newrc->critical = FUNC2(rc->critical->source, NULL, NULL);
        if(!newrc->critical)
            FUNC1("Health alarm '%s.%s': failed to re-parse critical expression '%s'", rc->chart, rc->name, rc->critical->source);
    }

    return newrc;
}