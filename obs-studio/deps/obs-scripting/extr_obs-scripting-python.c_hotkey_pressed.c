
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ removed; } ;
struct python_obs_callback {int func; TYPE_1__ base; } ;
typedef int PyObject ;


 int * PyBool_FromLong (int) ;
 int * PyObject_CallObject (int ,int *) ;
 int * Py_BuildValue (char*,int *) ;
 int Py_XDECREF (int *) ;
 int lock_callback (struct python_obs_callback*) ;
 int py_error () ;
 int unlock_callback () ;

__attribute__((used)) static void hotkey_pressed(void *p_cb, bool pressed)
{
 struct python_obs_callback *cb = p_cb;

 if (cb->base.removed)
  return;

 lock_callback(cb);

 PyObject *py_pressed = PyBool_FromLong(pressed);
 PyObject *args = Py_BuildValue("(O)", py_pressed);
 PyObject *py_ret = PyObject_CallObject(cb->func, args);
 py_error();
 Py_XDECREF(py_ret);
 Py_XDECREF(args);
 Py_XDECREF(py_pressed);

 unlock_callback();
}
