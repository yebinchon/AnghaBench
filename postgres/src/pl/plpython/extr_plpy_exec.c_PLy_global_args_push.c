
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ calldepth; TYPE_1__* argstack; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ PLySavedArgs ;
typedef TYPE_2__ PLyProcedure ;


 TYPE_1__* PLy_function_save_args (TYPE_2__*) ;

__attribute__((used)) static void
PLy_global_args_push(PLyProcedure *proc)
{

 if (proc->calldepth > 0)
 {
  PLySavedArgs *node;


  node = PLy_function_save_args(proc);






  node->next = proc->argstack;
  proc->argstack = node;
 }
 proc->calldepth++;
}
