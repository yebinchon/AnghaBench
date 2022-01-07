
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int EMSG (int ) ;
 int PYTHON_HOME ;
 int PyEval_InitThreads () ;
 int PyEval_SaveThread () ;
 int PyImport_AddModule (char*) ;
 int * PyImport_ImportModule (char*) ;
 int PyMac_Initialize () ;
 int PyModule_GetDict (int ) ;
 int PyRun_SimpleString (char*) ;
 int Py_DECREF (int *) ;
 int Py_Initialize () ;
 int Py_NoSiteFlag ;
 int Py_SetPythonHome (int ) ;
 int PythonIO_Flush () ;
 scalar_t__ PythonIO_Init_io () ;
 scalar_t__ PythonMod_Init () ;
 int TRUE ;
 int _ (char*) ;
 int get_exceptions () ;
 int globals ;
 int init_structs () ;
 int initialised ;
 int python_enabled (int ) ;
 int saved_python_thread ;

__attribute__((used)) static int
Python_Init(void)
{
    if (!initialised)
    {
 init_structs();
 Py_Initialize();
 PyEval_InitThreads();




 if (PythonIO_Init_io())
     goto fail;

 if (PythonMod_Init())
     goto fail;

 globals = PyModule_GetDict(PyImport_AddModule("__main__"));





 PyRun_SimpleString("import sys; sys.path = filter(lambda x: x != '/must>not&exist', sys.path)");
 saved_python_thread =

     PyEval_SaveThread();

 initialised = 1;
    }

    return 0;

fail:





    PythonIO_Flush();
    return -1;
}
