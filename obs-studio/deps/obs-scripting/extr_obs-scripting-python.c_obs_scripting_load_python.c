
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct dstr {char* array; int member_0; } ;
typedef int argv ;


 int PyEval_InitThreads () ;
 int PyEval_ReleaseThread (int ) ;
 int PyEval_ThreadsInitialized () ;
 int PyGILState_GetThisThreadState () ;
 int PyImport_ImportModule (char*) ;
 scalar_t__ PyRun_SimpleString (char*) ;
 int PySys_SetArgv (int,char**) ;
 int Py_Initialize () ;
 int Py_IsInitialized () ;
 int Py_SetPythonHome (int ) ;
 int SCRIPT_DIR ;
 int UNUSED_PARAMETER (char const*) ;
 int _putenv (char*) ;
 int add_hook_functions (int ) ;
 int add_python_frontend_funcs (int ) ;
 int add_to_python_path (int ) ;
 int bfree (scalar_t__*) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int dstr_printf (struct dstr*,char*,char*) ;
 int getenv (char*) ;
 int home_path ;
 int import_python (char const*) ;
 int obs_add_tick_callback (int ,int *) ;
 int obs_python_unload () ;
 int os_utf8_to_wcs (char const*,int ,int ,int) ;
 int py_error () ;
 int py_obspython ;
 int python_loaded ;
 int python_loaded_at_all ;
 int python_tick ;
 scalar_t__* pythondir ;
 char* startup_script ;
 int warn (char*) ;

bool obs_scripting_load_python(const char *python_path)
{
 if (python_loaded)
  return 1;
 UNUSED_PARAMETER(python_path);


 Py_Initialize();
 if (!Py_IsInitialized())
  return 0;
 PyEval_InitThreads();
 if (!PyEval_ThreadsInitialized())
  return 0;




 wchar_t *argv[] = {L"", ((void*)0)};
 int argc = sizeof(argv) / sizeof(wchar_t *) - 1;

 PySys_SetArgv(argc, argv);
 add_to_python_path(SCRIPT_DIR);

 py_obspython = PyImport_ImportModule("obspython");
 bool success = !py_error();
 if (!success) {
  warn("Error importing obspython.py', unloading obs-python");
  goto out;
 }

 python_loaded = PyRun_SimpleString(startup_script) == 0;
 py_error();

 add_hook_functions(py_obspython);
 py_error();

 add_python_frontend_funcs(py_obspython);
 py_error();

out:



 PyEval_ReleaseThread(PyGILState_GetThisThreadState());

 if (!success) {
  warn("Failed to load python plugin");
  obs_python_unload();
 }

 python_loaded_at_all = success;

 if (python_loaded)
  obs_add_tick_callback(python_tick, ((void*)0));

 return python_loaded;
}
