
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_5__ {scalar_t__ doc; int ready_state; } ;
typedef TYPE_1__ ready_state_task_t ;
struct TYPE_6__ {scalar_t__ document; } ;
typedef TYPE_2__ DocHost ;


 int update_ready_state (TYPE_2__*,int ) ;

__attribute__((used)) static void ready_state_proc(DocHost *This, task_header_t *_task)
{
    ready_state_task_t *task = (ready_state_task_t*)_task;

    if(task->doc == This->document)
        update_ready_state(This, task->ready_state);
}
