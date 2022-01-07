
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int header; int ready_state; int doc; } ;
typedef TYPE_1__ ready_state_task_t ;
struct TYPE_7__ {int document; } ;
typedef int READYSTATE ;
typedef TYPE_2__ DocHost ;


 int FALSE ;
 int IUnknown_AddRef (int ) ;
 TYPE_1__* heap_alloc (int) ;
 int push_dochost_task (TYPE_2__*,int *,int ,int ,int ) ;
 int ready_state_proc ;
 int ready_state_task_destr ;

__attribute__((used)) static void push_ready_state_task(DocHost *This, READYSTATE ready_state)
{
    ready_state_task_t *task = heap_alloc(sizeof(ready_state_task_t));

    IUnknown_AddRef(This->document);
    task->doc = This->document;
    task->ready_state = ready_state;

    push_dochost_task(This, &task->header, ready_state_proc, ready_state_task_destr, FALSE);
}
