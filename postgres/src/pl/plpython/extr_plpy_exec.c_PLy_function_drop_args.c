
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nargs; int args; int * namedargs; } ;
typedef TYPE_1__ PLySavedArgs ;


 int Py_XDECREF (int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
PLy_function_drop_args(PLySavedArgs *savedargs)
{
 int i;


 for (i = 0; i < savedargs->nargs; i++)
 {
  Py_XDECREF(savedargs->namedargs[i]);
 }


 Py_XDECREF(savedargs->args);


 pfree(savedargs);
}
