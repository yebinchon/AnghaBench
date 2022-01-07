
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef int PyObject ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyFunction_Check (int *) ;
 int UNUSED_PARAMETER (int *) ;
 struct python_obs_callback* add_python_obs_callback (struct obs_python_script*,int *) ;
 struct obs_python_script* cur_python_script ;
 int obs_add_tick_callback (int ,struct python_obs_callback*) ;
 int obs_python_tick_callback ;
 int parse_args (int *,char*,int **) ;
 int * python_none () ;

__attribute__((used)) static PyObject *obs_python_add_tick_callback(PyObject *self, PyObject *args)
{
 struct obs_python_script *script = cur_python_script;
 PyObject *py_cb = ((void*)0);

 if (!script) {
  PyErr_SetString(PyExc_RuntimeError,
    "No active script, report this to Jim");
  return ((void*)0);
 }

 UNUSED_PARAMETER(self);

 if (!parse_args(args, "O", &py_cb))
  return python_none();
 if (!py_cb || !PyFunction_Check(py_cb))
  return python_none();

 struct python_obs_callback *cb = add_python_obs_callback(script, py_cb);
 obs_add_tick_callback(obs_python_tick_callback, cb);
 return python_none();
}
