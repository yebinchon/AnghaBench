
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef int PyObject ;


 int PyFunction_Check (int *) ;
 int UNUSED_PARAMETER (int *) ;
 struct obs_python_script* cur_python_script ;
 struct python_obs_callback* find_python_obs_callback (struct obs_python_script*,int *) ;
 int parse_args (int *,char*,int **) ;
 int * python_none () ;
 int remove_python_obs_callback (struct python_obs_callback*) ;

__attribute__((used)) static PyObject *remove_save_callback(PyObject *self, PyObject *args)
{
 struct obs_python_script *script = cur_python_script;
 PyObject *py_cb = ((void*)0);

 UNUSED_PARAMETER(self);

 if (!parse_args(args, "O", &py_cb))
  return python_none();
 if (!py_cb || !PyFunction_Check(py_cb))
  return python_none();

 struct python_obs_callback *cb =
  find_python_obs_callback(script, py_cb);
 if (cb)
  remove_python_obs_callback(cb);
 return python_none();
}
