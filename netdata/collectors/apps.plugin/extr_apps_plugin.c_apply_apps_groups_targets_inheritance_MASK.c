#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pid_stat {int merged; size_t ppid; TYPE_2__* parent; int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; TYPE_1__* target; struct pid_stat* next; int /*<<< orphan*/  sortlist; int /*<<< orphan*/  children_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  sortlist; void* target; } ;
struct TYPE_5__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; TYPE_1__* target; scalar_t__ children_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ debug_enabled; } ;

/* Variables and functions */
 size_t INIT_PID ; 
 TYPE_3__** all_pids ; 
 void* apps_groups_default_target ; 
 int debug_enabled ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pid_stat* root_of_pids ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void) {
    struct pid_stat *p = NULL;

    // children that do not have a target
    // inherit their target from their parent
    int found = 1, loops = 0;
    while(found) {
        if(FUNC2(debug_enabled)) loops++;
        found = 0;
        for(p = root_of_pids; p ; p = p->next) {
            // if this process does not have a target
            // and it has a parent
            // and its parent has a target
            // then, set the parent's target to this process
            if(FUNC2(!p->target && p->parent && p->parent->target)) {
                p->target = p->parent->target;
                found++;

                if(debug_enabled || (p->target && p->target->debug_enabled))
                    FUNC1("TARGET INHERITANCE: %s is inherited by %d (%s) from its parent %d (%s).", p->target->name, p->pid, p->comm, p->parent->pid, p->parent->comm);
            }
        }
    }

    // find all the procs with 0 childs and merge them to their parents
    // repeat, until nothing more can be done.
    int sortlist = 1;
    found = 1;
    while(found) {
        if(FUNC2(debug_enabled)) loops++;
        found = 0;

        for(p = root_of_pids; p ; p = p->next) {
            if(FUNC2(!p->sortlist && !p->children_count))
                p->sortlist = sortlist++;

            if(FUNC2(
                    !p->children_count            // if this process does not have any children
                    && !p->merged                 // and is not already merged
                    && p->parent                  // and has a parent
                    && p->parent->children_count  // and its parent has children
                                                  // and the target of this process and its parent is the same,
                                                  // or the parent does not have a target
                    && (p->target == p->parent->target || !p->parent->target)
                    && p->ppid != INIT_PID        // and its parent is not init
                )) {
                // mark it as merged
                p->parent->children_count--;
                p->merged = 1;

                // the parent inherits the child's target, if it does not have a target itself
                if(FUNC2(p->target && !p->parent->target)) {
                    p->parent->target = p->target;

                    if(debug_enabled || (p->target && p->target->debug_enabled))
                        FUNC1("TARGET INHERITANCE: %s is inherited by %d (%s) from its child %d (%s).", p->target->name, p->parent->pid, p->parent->comm, p->pid, p->comm);
                }

                found++;
            }
        }

        FUNC0("TARGET INHERITANCE: merged %d processes", found);
    }

    // init goes always to default target
    if(all_pids[INIT_PID])
        all_pids[INIT_PID]->target = apps_groups_default_target;

    // pid 0 goes always to default target
    if(all_pids[0])
        all_pids[0]->target = apps_groups_default_target;

    // give a default target on all top level processes
    if(FUNC2(debug_enabled)) loops++;
    for(p = root_of_pids; p ; p = p->next) {
        // if the process is not merged itself
        // then is is a top level process
        if(FUNC2(!p->merged && !p->target))
            p->target = apps_groups_default_target;

        // make sure all processes have a sortlist
        if(FUNC2(!p->sortlist))
            p->sortlist = sortlist++;
    }

    if(all_pids[1])
        all_pids[1]->sortlist = sortlist++;

    // give a target to all merged child processes
    found = 1;
    while(found) {
        if(FUNC2(debug_enabled)) loops++;
        found = 0;
        for(p = root_of_pids; p ; p = p->next) {
            if(FUNC2(!p->target && p->merged && p->parent && p->parent->target)) {
                p->target = p->parent->target;
                found++;

                if(debug_enabled || (p->target && p->target->debug_enabled))
                    FUNC1("TARGET INHERITANCE: %s is inherited by %d (%s) from its parent %d (%s) at phase 2.", p->target->name, p->pid, p->comm, p->parent->pid, p->parent->comm);
            }
        }
    }

    FUNC0("apply_apps_groups_targets_inheritance() made %d loops on the process tree", loops);
}