
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int ERROR ;
 int PLy_elog (int ,char*) ;
 int * PLy_interp_globals ;
 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyImport_AddModule (char*) ;
 int * PyModule_GetDict (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static void
PLy_init_interp(void)
{
 static PyObject *PLy_interp_safe_globals = ((void*)0);
 PyObject *mainmod;

 mainmod = PyImport_AddModule("__main__");
 if (mainmod == ((void*)0) || PyErr_Occurred())
  PLy_elog(ERROR, "could not import \"__main__\" module");
 Py_INCREF(mainmod);
 PLy_interp_globals = PyModule_GetDict(mainmod);
 PLy_interp_safe_globals = PyDict_New();
 if (PLy_interp_safe_globals == ((void*)0))
  PLy_elog(ERROR, ((void*)0));
 PyDict_SetItemString(PLy_interp_globals, "GD", PLy_interp_safe_globals);
 Py_DECREF(mainmod);
 if (PLy_interp_globals == ((void*)0) || PyErr_Occurred())
  PLy_elog(ERROR, "could not initialize globals");
}
