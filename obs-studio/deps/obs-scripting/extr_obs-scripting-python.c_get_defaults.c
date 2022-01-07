
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int settings; } ;
struct obs_python_script {TYPE_1__ base; } ;
typedef int PyObject ;


 int * PyObject_CallObject (int *,int *) ;
 int * Py_BuildValue (char*,int *) ;
 int Py_XDECREF (int *) ;
 int libobs_to_py (int ,int ,int,int **) ;
 int obs_data_t ;
 int py_error () ;

__attribute__((used)) static void get_defaults(struct obs_python_script *data, PyObject *get_defs)
{
 PyObject *py_settings;
 if (!libobs_to_py(obs_data_t, data->base.settings, 0, &py_settings))
  return;

 PyObject *args = Py_BuildValue("(O)", py_settings);
 PyObject *py_ret = PyObject_CallObject(get_defs, args);
 py_error();
 Py_XDECREF(py_ret);
 Py_XDECREF(args);
 Py_XDECREF(py_settings);
}
