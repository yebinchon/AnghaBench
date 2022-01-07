
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct target {scalar_t__ comparehash; size_t comparelen; int name; scalar_t__ debug_enabled; struct target* target; int compare; scalar_t__ ends_with; scalar_t__ starts_with; struct target* next; } ;
struct pid_stat {struct target* target; int * comm; scalar_t__ cmdline; } ;


 struct target* apps_groups_root_target ;
 scalar_t__ debug_enabled ;
 int debug_log_int (char*,int *,int ) ;
 scalar_t__ proc_pid_cmdline_is_needed ;
 scalar_t__ simple_hash (int *) ;
 int strcmp (int ,int *) ;
 size_t strlen (int *) ;
 int strncmp (int ,int *,size_t) ;
 scalar_t__ strstr (scalar_t__,int ) ;
 int targets_assignment_counter ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void assign_target_to_pid(struct pid_stat *p) {
    targets_assignment_counter++;

    uint32_t hash = simple_hash(p->comm);
    size_t pclen = strlen(p->comm);

    struct target *w;
    for(w = apps_groups_root_target; w ; w = w->next) {
        if(unlikely(( (!w->starts_with && !w->ends_with && w->comparehash == hash && !strcmp(w->compare, p->comm))
                      || (w->starts_with && !w->ends_with && !strncmp(w->compare, p->comm, w->comparelen))
                      || (!w->starts_with && w->ends_with && pclen >= w->comparelen && !strcmp(w->compare, &p->comm[pclen - w->comparelen]))
                      || (proc_pid_cmdline_is_needed && w->starts_with && w->ends_with && p->cmdline && strstr(p->cmdline, w->compare))
                    ))) {

            if(w->target) p->target = w->target;
            else p->target = w;

            if(debug_enabled || (p->target && p->target->debug_enabled))
                debug_log_int("%s linked to target %s", p->comm, p->target->name);

            break;
        }
    }
}
