
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int calldepth; TYPE_1__* argstack; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ PLySavedArgs ;
typedef TYPE_2__ PLyProcedure ;


 int Assert (int) ;
 int PLy_function_restore_args (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
PLy_global_args_pop(PLyProcedure *proc)
{
 Assert(proc->calldepth > 0);

 if (proc->calldepth > 1)
 {
  PLySavedArgs *ptr = proc->argstack;


  Assert(ptr != ((void*)0));
  proc->argstack = ptr->next;
  proc->calldepth--;


  PLy_function_restore_args(proc, ptr);
 }
 else
 {

  Assert(proc->argstack == ((void*)0));
  proc->calldepth--;
 }
}
