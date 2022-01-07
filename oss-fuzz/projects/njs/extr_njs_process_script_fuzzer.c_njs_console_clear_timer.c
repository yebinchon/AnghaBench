
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int mem_pool; } ;
typedef TYPE_2__ njs_vm_t ;
typedef int njs_vm_event_t ;
struct TYPE_13__ {int length; int * start; } ;
struct TYPE_15__ {int pool; int * proto; TYPE_1__ key; int key_hash; } ;
typedef TYPE_3__ njs_lvlhsh_query_t ;
typedef scalar_t__ njs_int_t ;
typedef TYPE_4__* njs_host_event_t ;
typedef TYPE_5__* njs_external_ptr_t ;
struct TYPE_18__ {int * prev; } ;
struct TYPE_16__ {TYPE_8__ link; int vm_event; } ;
typedef TYPE_4__ njs_ev_t ;
struct TYPE_17__ {int events; TYPE_2__* vm; } ;
typedef TYPE_5__ njs_console_t ;


 scalar_t__ NJS_OK ;
 int lvlhsh_proto ;
 int njs_djb_hash (int *,int) ;
 scalar_t__ njs_lvlhsh_delete (int *,TYPE_3__*) ;
 int njs_mp_free (int ,TYPE_4__*) ;
 int njs_queue_remove (TYPE_8__*) ;
 int njs_stderror (char*) ;

__attribute__((used)) static void
njs_console_clear_timer(njs_external_ptr_t external, njs_host_event_t event)
{
    njs_vm_t *vm;
    njs_ev_t *ev;
    njs_int_t ret;
    njs_console_t *console;
    njs_lvlhsh_query_t lhq;

    ev = event;
    console = external;
    vm = console->vm;

    lhq.key.start = (u_char *) &ev->vm_event;
    lhq.key.length = sizeof(njs_vm_event_t);
    lhq.key_hash = njs_djb_hash(lhq.key.start, lhq.key.length);

    lhq.proto = &lvlhsh_proto;
    lhq.pool = vm->mem_pool;

    if (ev->link.prev != ((void*)0)) {
        njs_queue_remove(&ev->link);
    }

    ret = njs_lvlhsh_delete(&console->events, &lhq);
    if (ret != NJS_OK) {
        njs_stderror("njs_lvlhsh_delete() failed\n");
    }

    njs_mp_free(vm->mem_pool, ev);
}
