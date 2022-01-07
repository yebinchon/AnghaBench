
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int * func; } ;
struct obs_python_script {int first_callback; } ;
typedef int obs_script_t ;
typedef int PyObject ;


 int Py_XINCREF (int *) ;
 struct python_obs_callback* add_script_callback (int *,int *,int) ;

__attribute__((used)) static inline struct python_obs_callback *
add_python_obs_callback_extra(struct obs_python_script *script, PyObject *func,
         size_t extra_size)
{
 struct python_obs_callback *cb = add_script_callback(
  &script->first_callback, (obs_script_t *)script,
  sizeof(*cb) + extra_size);

 Py_XINCREF(func);
 cb->func = func;
 return cb;
}
