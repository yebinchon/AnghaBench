#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {char* hostname; TYPE_1__* rrdset_root; } ;
struct TYPE_17__ {int rrd_memory_mode; int /*<<< orphan*/  memsize; int /*<<< orphan*/  name; struct TYPE_17__* module_name; struct TYPE_17__* plugin_name; struct TYPE_17__* config_section; int /*<<< orphan*/  rrdset_rwlock; int /*<<< orphan*/  id; struct TYPE_17__* next; int /*<<< orphan*/  rrdvar_root_index; int /*<<< orphan*/  rrdfamily; scalar_t__ dimensions; scalar_t__ alarms; scalar_t__ variables; TYPE_2__* rrdhost; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRD_CALLS ; 
#define  RRD_MEMORY_MODE_ALLOC 133 
#define  RRD_MEMORY_MODE_DBENGINE 132 
#define  RRD_MEMORY_MODE_MAP 131 
#define  RRD_MEMORY_MODE_NONE 130 
#define  RRD_MEMORY_MODE_RAM 129 
#define  RRD_MEMORY_MODE_SAVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

void FUNC16(RRDSET *st) {
    if(FUNC15(!st)) return;

    RRDHOST *host = st->rrdhost;

    FUNC7(host);  // make sure we have a write lock on the host
    FUNC11(st);                  // lock this RRDSET

    // info("Removing chart '%s' ('%s')", st->id, st->name);

    // ------------------------------------------------------------------------
    // remove it from the indexes

    if(FUNC15(FUNC8(host, st) != st))
        FUNC1("RRDSET: INTERNAL ERROR: attempt to remove from index chart '%s', removed a different chart.", st->id);

    FUNC9(host, st);

    // ------------------------------------------------------------------------
    // free its children structures

    while(st->variables)  FUNC13(st->variables);
    while(st->alarms)     FUNC12(st->alarms);
    while(st->dimensions) FUNC5(st, st->dimensions);

    FUNC6(host, st->rrdfamily);

    FUNC0(D_RRD_CALLS, "RRDSET: Cleaning up remaining chart variables for host '%s', chart '%s'", host->hostname, st->id);
    FUNC14(host, &st->rrdvar_root_index);

    // ------------------------------------------------------------------------
    // unlink it from the host

    if(st == host->rrdset_root) {
        host->rrdset_root = st->next;
    }
    else {
        // find the previous one
        RRDSET *s;
        for(s = host->rrdset_root; s && s->next != st ; s = s->next) ;

        // bypass it
        if(s) s->next = st->next;
        else FUNC1("Request to free RRDSET '%s': cannot find it under host '%s'", st->id, host->hostname);
    }

    FUNC10(st);

    // ------------------------------------------------------------------------
    // free it

    FUNC4(&st->rrdset_rwlock);

    // free directly allocated members
    FUNC2(st->config_section);
    FUNC2(st->plugin_name);
    FUNC2(st->module_name);

    switch(st->rrd_memory_mode) {
        case RRD_MEMORY_MODE_SAVE:
        case RRD_MEMORY_MODE_MAP:
        case RRD_MEMORY_MODE_RAM:
            FUNC0(D_RRD_CALLS, "Unmapping stats '%s'.", st->name);
            FUNC3(st, st->memsize);
            break;

        case RRD_MEMORY_MODE_ALLOC:
        case RRD_MEMORY_MODE_NONE:
        case RRD_MEMORY_MODE_DBENGINE:
            FUNC2(st);
            break;
    }
}