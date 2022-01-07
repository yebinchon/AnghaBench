
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extra; } ;
struct python_obs_callback {TYPE_1__ base; } ;
struct obs_python_script {int dummy; } ;
typedef int PyObject ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyFunction_Check (int *) ;
 int UNUSED_PARAMETER (int *) ;
 struct python_obs_callback* add_python_obs_callback (struct obs_python_script*,int *) ;
 int calldata_set_ptr (int *,char*,int) ;
 int calldata_signal_callback_global ;
 struct obs_python_script* cur_python_script ;
 int handler ;
 int parse_args (int *,char*,int **,int **) ;
 int py_to_libobs (int,int *,int*) ;
 int * python_none () ;
 int signal_handler_connect_global (int,int ,struct python_obs_callback*) ;
 int signal_handler_t ;

__attribute__((used)) static PyObject *obs_python_signal_handler_connect_global(PyObject *self,
         PyObject *args)
{
 struct obs_python_script *script = cur_python_script;
 PyObject *py_sh = ((void*)0);
 PyObject *py_cb = ((void*)0);

 if (!script) {
  PyErr_SetString(PyExc_RuntimeError,
    "No active script, report this to Jim");
  return ((void*)0);
 }

 UNUSED_PARAMETER(self);

 signal_handler_t *handler;

 if (!parse_args(args, "OO", &py_sh, &py_cb))
  return python_none();

 if (!py_to_libobs(signal_handler_t, py_sh, &handler))
  return python_none();
 if (!py_cb || !PyFunction_Check(py_cb))
  return python_none();

 struct python_obs_callback *cb = add_python_obs_callback(script, py_cb);
 calldata_set_ptr(&cb->base.extra, "handler", handler);
 signal_handler_connect_global(handler, calldata_signal_callback_global,
          cb);
 return python_none();
}
