
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pid_stat {int merged; size_t ppid; TYPE_2__* parent; int comm; int pid; TYPE_1__* target; struct pid_stat* next; int sortlist; int children_count; } ;
struct TYPE_6__ {int sortlist; void* target; } ;
struct TYPE_5__ {int comm; int pid; TYPE_1__* target; scalar_t__ children_count; } ;
struct TYPE_4__ {int name; scalar_t__ debug_enabled; } ;


 size_t INIT_PID ;
 TYPE_3__** all_pids ;
 void* apps_groups_default_target ;
 int debug_enabled ;
 int debug_log (char*,int) ;
 int debug_log_int (char*,int ,int ,int ,int ,int ) ;
 struct pid_stat* root_of_pids ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void apply_apps_groups_targets_inheritance(void) {
    struct pid_stat *p = ((void*)0);



    int found = 1, loops = 0;
    while(found) {
        if(unlikely(debug_enabled)) loops++;
        found = 0;
        for(p = root_of_pids; p ; p = p->next) {




            if(unlikely(!p->target && p->parent && p->parent->target)) {
                p->target = p->parent->target;
                found++;

                if(debug_enabled || (p->target && p->target->debug_enabled))
                    debug_log_int("TARGET INHERITANCE: %s is inherited by %d (%s) from its parent %d (%s).", p->target->name, p->pid, p->comm, p->parent->pid, p->parent->comm);
            }
        }
    }



    int sortlist = 1;
    found = 1;
    while(found) {
        if(unlikely(debug_enabled)) loops++;
        found = 0;

        for(p = root_of_pids; p ; p = p->next) {
            if(unlikely(!p->sortlist && !p->children_count))
                p->sortlist = sortlist++;

            if(unlikely(
                    !p->children_count
                    && !p->merged
                    && p->parent
                    && p->parent->children_count


                    && (p->target == p->parent->target || !p->parent->target)
                    && p->ppid != INIT_PID
                )) {

                p->parent->children_count--;
                p->merged = 1;


                if(unlikely(p->target && !p->parent->target)) {
                    p->parent->target = p->target;

                    if(debug_enabled || (p->target && p->target->debug_enabled))
                        debug_log_int("TARGET INHERITANCE: %s is inherited by %d (%s) from its child %d (%s).", p->target->name, p->parent->pid, p->parent->comm, p->pid, p->comm);
                }

                found++;
            }
        }

        debug_log("TARGET INHERITANCE: merged %d processes", found);
    }


    if(all_pids[INIT_PID])
        all_pids[INIT_PID]->target = apps_groups_default_target;


    if(all_pids[0])
        all_pids[0]->target = apps_groups_default_target;


    if(unlikely(debug_enabled)) loops++;
    for(p = root_of_pids; p ; p = p->next) {


        if(unlikely(!p->merged && !p->target))
            p->target = apps_groups_default_target;


        if(unlikely(!p->sortlist))
            p->sortlist = sortlist++;
    }

    if(all_pids[1])
        all_pids[1]->sortlist = sortlist++;


    found = 1;
    while(found) {
        if(unlikely(debug_enabled)) loops++;
        found = 0;
        for(p = root_of_pids; p ; p = p->next) {
            if(unlikely(!p->target && p->merged && p->parent && p->parent->target)) {
                p->target = p->parent->target;
                found++;

                if(debug_enabled || (p->target && p->target->debug_enabled))
                    debug_log_int("TARGET INHERITANCE: %s is inherited by %d (%s) from its parent %d (%s) at phase 2.", p->target->name, p->pid, p->comm, p->parent->pid, p->parent->comm);
            }
        }
    }

    debug_log("apply_apps_groups_targets_inheritance() made %d loops on the process tree", loops);
}
