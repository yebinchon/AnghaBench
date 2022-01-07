
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int UNUSED_PARAMETER (int *) ;
 scalar_t__ cur_python_cb ;
 int * python_none () ;
 int remove_python_obs_callback (scalar_t__) ;

__attribute__((used)) static PyObject *remove_current_callback(PyObject *self, PyObject *args)
{
 UNUSED_PARAMETER(self);
 UNUSED_PARAMETER(args);

 if (cur_python_cb)
  remove_python_obs_callback(cur_python_cb);
 return python_none();
}
