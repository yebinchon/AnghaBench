
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct python_obs_callback {TYPE_1__ base; int * func; } ;
struct obs_python_script {scalar_t__ first_callback; } ;
typedef int PyObject ;



__attribute__((used)) static inline struct python_obs_callback *
find_next_python_obs_callback(struct obs_python_script *script,
         struct python_obs_callback *cb, PyObject *func)
{
 cb = cb ? (struct python_obs_callback *)cb->base.next
  : (struct python_obs_callback *)script->first_callback;

 while (cb) {
  if (cb->func == func)
   break;
  cb = (struct python_obs_callback *)cb->base.next;
 }

 return cb;
}
