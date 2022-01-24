#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  log_count; int /*<<< orphan*/  log_fp; } ;
struct TYPE_10__ {char* guid; } ;
struct TYPE_9__ {int last_t; char* guid; } ;
struct TYPE_8__ {char* url; } ;
typedef  TYPE_1__ REGISTRY_URL ;
typedef  TYPE_2__ REGISTRY_PERSON ;
typedef  TYPE_3__ REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char,int,char*,char*,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_7__ registry ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(char action, REGISTRY_PERSON *p, REGISTRY_MACHINE *m, REGISTRY_URL *u, char *name) {
    if(FUNC2(registry.log_fp)) {
        if(FUNC5(FUNC1(registry.log_fp, "%c\t%08x\t%s\t%s\t%s\t%s\n",
                action,
                p->last_t,
                p->guid,
                m->guid,
                name,
                u->url) < 0))
            FUNC0("Registry: failed to save log. Registry data may be lost in case of abnormal restart.");

        // we increase the counter even on failures
        // so that the registry will be saved periodically
        registry.log_count++;

        // this must be outside the log_lock(), or a deadlock will happen.
        // registry_db_save() checks the same inside the log_lock, so only
        // one thread will save the db
        if(FUNC5(FUNC4()))
            FUNC3();
    }
}