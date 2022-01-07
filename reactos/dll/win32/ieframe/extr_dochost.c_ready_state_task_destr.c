
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {int doc; } ;
typedef TYPE_1__ ready_state_task_t ;


 int IUnknown_Release (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void ready_state_task_destr(task_header_t *_task)
{
    ready_state_task_t *task = (ready_state_task_t*)_task;

    IUnknown_Release(task->doc);
    heap_free(task);
}
