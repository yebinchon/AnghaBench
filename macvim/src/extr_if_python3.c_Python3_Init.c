
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int PYTHON3_HOME ;
 int Py3Init_vim ;
 int PyEval_InitThreads () ;
 int PyEval_SaveThread () ;
 int PyImport_AddModule (char*) ;
 int PyImport_AppendInittab (char*,int ) ;
 int PyMac_Initialize () ;
 int PyModule_GetDict (int ) ;
 int PyRun_SimpleString (char*) ;
 int Py_Initialize () ;
 int Py_SetPythonHome (int ) ;
 int PythonIO_Flush () ;
 scalar_t__ PythonIO_Init_io () ;
 int TRUE ;
 int _ (char*) ;
 int get_py3_exceptions () ;
 int globals ;
 int init_structs () ;
 int py3initialised ;
 int python3_enabled (int ) ;

__attribute__((used)) static int
Python3_Init(void)
{
    if (!py3initialised)
    {
 init_structs();






 PyImport_AppendInittab("vim", Py3Init_vim);


 Py_Initialize();







 PyEval_InitThreads();




 if (PythonIO_Init_io())
     goto fail;

 globals = PyModule_GetDict(PyImport_AddModule("__main__"));
 PyRun_SimpleString("import vim; import sys; sys.path = list(filter(lambda x: not x.endswith('must>not&exist'), sys.path))");
 PyEval_SaveThread();

 py3initialised = 1;
    }

    return 0;

fail:





    PythonIO_Flush();
    return -1;
}
