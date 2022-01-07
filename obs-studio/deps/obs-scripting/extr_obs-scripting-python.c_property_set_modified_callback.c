
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef int PyObject ;


 int PyFunction_Check (int *) ;
 int UNUSED_PARAMETER (int *) ;
 struct python_obs_callback* add_python_obs_callback (struct obs_python_script*,int *) ;
 struct obs_python_script* cur_python_script ;
 int modified_callback ;
 int obs_property_set_modified_callback2 (int,int ,struct python_obs_callback*) ;
 int obs_property_t ;
 int p ;
 int parse_args (int *,char*,int **,int **) ;
 int py_to_libobs (int,int *,int*) ;
 int * python_none () ;

__attribute__((used)) static PyObject *property_set_modified_callback(PyObject *self, PyObject *args)
{
 struct obs_python_script *script = cur_python_script;
 PyObject *py_p;
 PyObject *py_cb;
 obs_property_t *p;

 if (!parse_args(args, "OO", &py_p, &py_cb))
  return python_none();
 if (!py_to_libobs(obs_property_t, py_p, &p))
  return python_none();
 if (!py_cb || !PyFunction_Check(py_cb))
  return python_none();

 struct python_obs_callback *cb = add_python_obs_callback(script, py_cb);
 obs_property_set_modified_callback2(p, modified_callback, cb);

 UNUSED_PARAMETER(self);
 return python_none();
}
