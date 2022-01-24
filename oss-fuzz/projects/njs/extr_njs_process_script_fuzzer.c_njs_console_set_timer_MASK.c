#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_11__ {int /*<<< orphan*/  mem_pool; } ;
typedef  TYPE_2__ njs_vm_t ;
typedef  int /*<<< orphan*/  njs_vm_event_t ;
struct TYPE_10__ {int length; int /*<<< orphan*/ * start; } ;
struct TYPE_12__ {int /*<<< orphan*/  pool; int /*<<< orphan*/ * proto; TYPE_5__* value; scalar_t__ replace; TYPE_1__ key; int /*<<< orphan*/  key_hash; } ;
typedef  TYPE_3__ njs_lvlhsh_query_t ;
typedef  scalar_t__ njs_int_t ;
typedef  int /*<<< orphan*/ * njs_host_event_t ;
typedef  TYPE_4__* njs_external_ptr_t ;
struct TYPE_14__ {int /*<<< orphan*/  link; int /*<<< orphan*/  vm_event; } ;
typedef  TYPE_5__ njs_ev_t ;
struct TYPE_13__ {int /*<<< orphan*/  posted_events; int /*<<< orphan*/  events; TYPE_2__* vm; } ;
typedef  TYPE_4__ njs_console_t ;

/* Variables and functions */
 scalar_t__ NJS_OK ; 
 int /*<<< orphan*/  lvlhsh_proto ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static njs_host_event_t
FUNC6(njs_external_ptr_t external, uint64_t delay,
    njs_vm_event_t vm_event)
{
    njs_ev_t            *ev;
    njs_vm_t            *vm;
    njs_int_t           ret;
    njs_console_t       *console;
    njs_lvlhsh_query_t  lhq;

    if (delay != 0) {
        FUNC5("njs_console_set_timer(): async timers unsupported\n");
        return NULL;
    }

    console = external;
    vm = console->vm;

    ev = FUNC2(vm->mem_pool, sizeof(njs_ev_t));
    if (FUNC4(ev == NULL)) {
        return NULL;
    }

    ev->vm_event = vm_event;

    lhq.key.start = (u_char *) &ev->vm_event;
    lhq.key.length = sizeof(njs_vm_event_t);
    lhq.key_hash = FUNC0(lhq.key.start, lhq.key.length);

    lhq.replace = 0;
    lhq.value = ev;
    lhq.proto = &lvlhsh_proto;
    lhq.pool = vm->mem_pool;

    ret = FUNC1(&console->events, &lhq);
    if (FUNC4(ret != NJS_OK)) {
        return NULL;
    }

    FUNC3(&console->posted_events, &ev->link);

    return (njs_host_event_t) ev;
}