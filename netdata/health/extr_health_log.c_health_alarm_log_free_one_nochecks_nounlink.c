
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* new_value_string; struct TYPE_4__* old_value_string; struct TYPE_4__* info; struct TYPE_4__* units; struct TYPE_4__* source; struct TYPE_4__* recipient; struct TYPE_4__* exec; struct TYPE_4__* family; struct TYPE_4__* chart; struct TYPE_4__* name; } ;
typedef TYPE_1__ ALARM_ENTRY ;


 int freez (TYPE_1__*) ;

inline void health_alarm_log_free_one_nochecks_nounlink(ALARM_ENTRY *ae) {
    freez(ae->name);
    freez(ae->chart);
    freez(ae->family);
    freez(ae->exec);
    freez(ae->recipient);
    freez(ae->source);
    freez(ae->units);
    freez(ae->info);
    freez(ae->old_value_string);
    freez(ae->new_value_string);
    freez(ae);
}
