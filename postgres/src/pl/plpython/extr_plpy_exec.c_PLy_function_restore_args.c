
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char** argnames; int globals; } ;
struct TYPE_6__ {int nargs; scalar_t__ args; scalar_t__* namedargs; } ;
typedef TYPE_1__ PLySavedArgs ;
typedef TYPE_2__ PLyProcedure ;


 int PyDict_SetItemString (int ,char*,scalar_t__) ;
 int Py_DECREF (scalar_t__) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
PLy_function_restore_args(PLyProcedure *proc, PLySavedArgs *savedargs)
{

 if (proc->argnames)
 {
  int i;

  for (i = 0; i < savedargs->nargs; i++)
  {
   if (proc->argnames[i] && savedargs->namedargs[i])
   {
    PyDict_SetItemString(proc->globals, proc->argnames[i],
          savedargs->namedargs[i]);
    Py_DECREF(savedargs->namedargs[i]);
   }
  }
 }


 if (savedargs->args)
 {
  PyDict_SetItemString(proc->globals, "args", savedargs->args);
  Py_DECREF(savedargs->args);
 }


 pfree(savedargs);
}
