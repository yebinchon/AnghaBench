
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_python_script {int save; } ;
struct TYPE_3__ {int settings; int loaded; } ;
typedef TYPE_1__ obs_script_t ;
typedef int PyObject ;


 int * PyObject_CallObject (int ,int *) ;
 int * Py_BuildValue (char*,int *) ;
 int Py_XDECREF (int *) ;
 struct obs_python_script* cur_python_script ;
 scalar_t__ libobs_to_py (int ,int ,int,int **) ;
 int lock_python () ;
 int obs_data_t ;
 int py_error () ;
 int python_loaded ;
 int unlock_python () ;

void obs_python_script_save(obs_script_t *s)
{
 struct obs_python_script *data = (struct obs_python_script *)s;

 if (!s->loaded || !python_loaded)
  return;
 if (!data->save)
  return;

 lock_python();
 cur_python_script = data;

 PyObject *py_settings;
 if (libobs_to_py(obs_data_t, s->settings, 0, &py_settings)) {
  PyObject *args = Py_BuildValue("(O)", py_settings);
  PyObject *ret = PyObject_CallObject(data->save, args);
  py_error();
  Py_XDECREF(ret);
  Py_XDECREF(args);
  Py_XDECREF(py_settings);
 }

 cur_python_script = ((void*)0);
 unlock_python();
}
