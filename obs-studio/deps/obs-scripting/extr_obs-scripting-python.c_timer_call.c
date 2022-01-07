
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {scalar_t__ removed; } ;
struct python_obs_callback {int func; } ;
typedef int PyObject ;


 int * PyObject_CallObject (int ,int *) ;
 int Py_XDECREF (int *) ;
 int lock_callback (struct python_obs_callback*) ;
 int py_error () ;
 int unlock_callback () ;

__attribute__((used)) static void timer_call(struct script_callback *p_cb)
{
 struct python_obs_callback *cb = (struct python_obs_callback *)p_cb;

 if (p_cb->removed)
  return;

 lock_callback(cb);
 PyObject *py_ret = PyObject_CallObject(cb->func, ((void*)0));
 py_error();
 Py_XDECREF(py_ret);
 unlock_callback();
}
