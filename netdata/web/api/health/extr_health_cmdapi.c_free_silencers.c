
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* families; struct TYPE_9__* hosts; struct TYPE_9__* contexts; struct TYPE_9__* charts; struct TYPE_9__* alarms; int families_pattern; int hosts_pattern; int contexts_pattern; int charts_pattern; int alarms_pattern; struct TYPE_9__* next; } ;
typedef TYPE_1__ SILENCER ;


 int D_HEALTH ;
 int debug (int ,char*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int freez (TYPE_1__*) ;
 int simple_pattern_free (int ) ;

void free_silencers(SILENCER *t) {
    if (!t) return;
    if (t->next) free_silencers(t->next);
    debug(D_HEALTH, "HEALTH command API: Freeing silencer %s:%s:%s:%s:%s", t->alarms,
          t->charts, t->contexts, t->hosts, t->families);
    simple_pattern_free(t->alarms_pattern);
    simple_pattern_free(t->charts_pattern);
    simple_pattern_free(t->contexts_pattern);
    simple_pattern_free(t->hosts_pattern);
    simple_pattern_free(t->families_pattern);
    freez(t->alarms);
    freez(t->charts);
    freez(t->contexts);
    freez(t->hosts);
    freez(t->families);
    freez(t);
    return;
}
