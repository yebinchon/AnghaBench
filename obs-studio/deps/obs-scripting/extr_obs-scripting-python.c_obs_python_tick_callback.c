
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ removed; } ;
struct python_obs_callback {int func; TYPE_1__ base; } ;
typedef int PyObject ;


 int * PyObject_CallObject (int ,int *) ;
 int * Py_BuildValue (char*,float) ;
 int Py_XDECREF (int *) ;
 int lock_callback (struct python_obs_callback*) ;
 int obs_remove_tick_callback (void (*) (void*,float),struct python_obs_callback*) ;
 int py_error () ;
 int unlock_callback () ;

__attribute__((used)) static void obs_python_tick_callback(void *priv, float seconds)
{
 struct python_obs_callback *cb = priv;

 if (cb->base.removed) {
  obs_remove_tick_callback(obs_python_tick_callback, cb);
  return;
 }

 lock_callback(cb);

 PyObject *args = Py_BuildValue("(f)", seconds);
 PyObject *py_ret = PyObject_CallObject(cb->func, args);
 py_error();
 Py_XDECREF(py_ret);
 Py_XDECREF(args);

 unlock_callback();
}
