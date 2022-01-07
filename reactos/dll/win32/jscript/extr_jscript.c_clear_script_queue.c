
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ bytecode_t ;
struct TYPE_6__ {int * queue_tail; TYPE_1__* queue_head; } ;
typedef TYPE_2__ JScript ;


 int release_bytecode (TYPE_1__*) ;

__attribute__((used)) static void clear_script_queue(JScript *This)
{
    bytecode_t *iter, *iter2;

    if(!This->queue_head)
        return;

    iter = This->queue_head;
    while(iter) {
        iter2 = iter->next;
        iter->next = ((void*)0);
        release_bytecode(iter);
        iter = iter2;
    }

    This->queue_head = This->queue_tail = ((void*)0);
}
