
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_python_script {int * module; } ;
typedef int PyObject ;


 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 int * PyObject_CallObject (int *,int *) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_XDECREF (int *) ;
 struct obs_python_script* cur_python_script ;
 scalar_t__ py_error () ;

__attribute__((used)) static void unload_python_script(struct obs_python_script *data)
{
 PyObject *py_module = data->module;
 PyObject *py_func = ((void*)0);
 PyObject *py_ret = ((void*)0);

 cur_python_script = data;

 py_func = PyObject_GetAttrString(py_module, "script_unload");
 if (PyErr_Occurred() || !py_func) {
  PyErr_Clear();
  goto fail;
 }

 py_ret = PyObject_CallObject(py_func, ((void*)0));
 if (py_error())
  goto fail;

fail:
 Py_XDECREF(py_ret);
 Py_XDECREF(py_func);

 cur_python_script = ((void*)0);
}
