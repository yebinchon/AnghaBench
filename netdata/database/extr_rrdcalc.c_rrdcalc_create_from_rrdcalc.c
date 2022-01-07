
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int next_event_id; char const* chart; char* name; char const* exec; char const* recipient; char const* source; char const* units; char const* info; TYPE_3__* critical; TYPE_2__* warning; TYPE_1__* calculation; int options; int update_every; int before; int after; int group; int crit_repeat_every; int warn_repeat_every; scalar_t__ last_repeat; int delay_multiplier; int delay_max_duration; int delay_down_duration; int delay_up_duration; void* old_value; void* value; int red; int green; scalar_t__ foreachcounter; int * foreachdim; void* dimensions; void* hash_chart; void* hash; int id; } ;
struct TYPE_10__ {int source; } ;
struct TYPE_9__ {int source; } ;
struct TYPE_8__ {int source; } ;
typedef int RRDHOST ;
typedef TYPE_4__ RRDCALC ;


 void* NAN ;
 TYPE_4__* callocz (int,int) ;
 int error (char*,char const*,char const*,int ) ;
 void* expression_parse (int ,int *,int *) ;
 int rrdcalc_get_unique_id (int *,char const*,char const*,int*) ;
 void* simple_hash (char const*) ;
 void* strdupz (char const*) ;

inline RRDCALC *rrdcalc_create_from_rrdcalc(RRDCALC *rc, RRDHOST *host, const char *name, const char *dimension) {
    RRDCALC *newrc = callocz(1, sizeof(RRDCALC));

    newrc->next_event_id = 1;
    newrc->id = rrdcalc_get_unique_id(host, rc->chart, name, &rc->next_event_id);
    newrc->name = (char *)name;
    newrc->hash = simple_hash(newrc->name);
    newrc->chart = strdupz(rc->chart);
    newrc->hash_chart = simple_hash(rc->chart);

    newrc->dimensions = strdupz(dimension);
    newrc->foreachdim = ((void*)0);
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

    if(rc->exec) newrc->exec = strdupz(rc->exec);
    if(rc->recipient) newrc->recipient = strdupz(rc->recipient);
    if(rc->source) newrc->source = strdupz(rc->source);
    if(rc->units) newrc->units = strdupz(rc->units);
    if(rc->info) newrc->info = strdupz(rc->info);

    if(rc->calculation) {
        newrc->calculation = expression_parse(rc->calculation->source, ((void*)0), ((void*)0));
        if(!newrc->calculation)
            error("Health alarm '%s.%s': failed to parse calculation expression '%s'", rc->chart, rc->name, rc->calculation->source);
    }

    if(rc->warning) {
        newrc->warning = expression_parse(rc->warning->source, ((void*)0), ((void*)0));
        if(!newrc->warning)
            error("Health alarm '%s.%s': failed to re-parse warning expression '%s'", rc->chart, rc->name, rc->warning->source);
    }

    if(rc->critical) {
        newrc->critical = expression_parse(rc->critical->source, ((void*)0), ((void*)0));
        if(!newrc->critical)
            error("Health alarm '%s.%s': failed to re-parse critical expression '%s'", rc->chart, rc->name, rc->critical->source);
    }

    return newrc;
}
