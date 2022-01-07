
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL ;
 int NIL ;
 int PLy_elog (int ,char*) ;
 int * PLy_execution_contexts ;
 int PLy_init_interp () ;
 int PLy_init_plpy () ;
 int PY_MAJOR_VERSION ;
 scalar_t__ PyErr_Occurred () ;
 int PyImport_AppendInittab (char*,int ) ;
 int PyImport_ImportModule (char*) ;
 int PyInit_plpy ;
 int Py_Initialize () ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int explicit_subtransactions ;
 int init_procedure_caches () ;
 int* plpython_version_bitmask_ptr ;

__attribute__((used)) static void
PLy_initialize(void)
{
 static bool inited = 0;
 if (*plpython_version_bitmask_ptr != (1 << PY_MAJOR_VERSION))
  ereport(FATAL,
    (errmsg("multiple Python libraries are present in session"),
     errdetail("Only one Python major version can be used in one session.")));


 if (inited)
  return;




 Py_Initialize();



 PLy_init_interp();
 PLy_init_plpy();
 if (PyErr_Occurred())
  PLy_elog(FATAL, "untrapped error in initialization");

 init_procedure_caches();

 explicit_subtransactions = NIL;

 PLy_execution_contexts = ((void*)0);

 inited = 1;
}
