
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef int PyObject ;


 struct python_obs_callback* add_python_obs_callback_extra (struct obs_python_script*,int *,int ) ;

__attribute__((used)) static inline struct python_obs_callback *
add_python_obs_callback(struct obs_python_script *script, PyObject *func)
{
 return add_python_obs_callback_extra(script, func, 0);
}
