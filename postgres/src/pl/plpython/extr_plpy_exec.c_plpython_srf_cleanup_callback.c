
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * savedargs; int * iter; } ;
typedef TYPE_1__ PLySRFState ;


 int PLy_function_drop_args (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static void
plpython_srf_cleanup_callback(void *arg)
{
 PLySRFState *srfstate = (PLySRFState *) arg;


 Py_XDECREF(srfstate->iter);
 srfstate->iter = ((void*)0);

 if (srfstate->savedargs)
  PLy_function_drop_args(srfstate->savedargs);
 srfstate->savedargs = ((void*)0);
}
