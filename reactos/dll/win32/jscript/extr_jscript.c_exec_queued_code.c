
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_1__ bytecode_t ;
struct TYPE_8__ {TYPE_1__* queue_head; } ;
typedef TYPE_2__ JScript ;


 int clear_script_queue (TYPE_2__*) ;
 int exec_global_code (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void exec_queued_code(JScript *This)
{
    bytecode_t *iter;

    for(iter = This->queue_head; iter; iter = iter->next)
        exec_global_code(This, iter);

    clear_script_queue(This);
}
