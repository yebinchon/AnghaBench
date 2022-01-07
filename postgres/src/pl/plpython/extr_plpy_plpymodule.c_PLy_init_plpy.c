
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int ERROR ;
 int PLy_add_exceptions (int *) ;
 int PLy_cursor_init_type () ;
 int PLy_elog (int ,char*) ;
 int PLy_methods ;
 int PLy_module ;
 int PLy_plan_init_type () ;
 int PLy_result_init_type () ;
 int PLy_subtransaction_init_type () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyImport_AddModule (char*) ;
 int PyModule_Create (int *) ;
 int * PyModule_GetDict (int *) ;
 int * Py_InitModule (char*,int ) ;

void
PLy_init_plpy(void)
{
 PyObject *main_mod,
      *main_dict,
      *plpy_mod;


 PyObject *plpy;





 PLy_plan_init_type();
 PLy_result_init_type();
 PLy_subtransaction_init_type();
 PLy_cursor_init_type();





 plpy = Py_InitModule("plpy", PLy_methods);
 PLy_add_exceptions(plpy);







 main_mod = PyImport_AddModule("__main__");
 main_dict = PyModule_GetDict(main_mod);
 plpy_mod = PyImport_AddModule("plpy");
 if (plpy_mod == ((void*)0))
  PLy_elog(ERROR, "could not import \"plpy\" module");
 PyDict_SetItemString(main_dict, "plpy", plpy_mod);
 if (PyErr_Occurred())
  PLy_elog(ERROR, "could not import \"plpy\" module");
}
