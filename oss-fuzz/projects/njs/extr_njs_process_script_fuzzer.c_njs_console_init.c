
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int njs_vm_t ;
typedef int njs_int_t ;
struct TYPE_4__ {int * completions; } ;
struct TYPE_5__ {TYPE_1__ completion; int time; int posted_events; int events; int * vm; } ;
typedef TYPE_2__ njs_console_t ;


 int NJS_ERROR ;
 int NJS_OK ;
 int UINT64_MAX ;
 int njs_lvlhsh_init (int *) ;
 int njs_queue_init (int *) ;
 int * njs_vm_completions (int *,int *) ;

__attribute__((used)) static njs_int_t
njs_console_init(njs_vm_t *vm, njs_console_t *console)
{
    console->vm = vm;

    njs_lvlhsh_init(&console->events);
    njs_queue_init(&console->posted_events);

    console->time = UINT64_MAX;

    console->completion.completions = njs_vm_completions(vm, ((void*)0));
    if (console->completion.completions == ((void*)0)) {
        return NJS_ERROR;
    }

    return NJS_OK;
}
