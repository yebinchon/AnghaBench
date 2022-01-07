
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ script; } ;
struct python_obs_callback {TYPE_1__ base; } ;
struct obs_python_script {int dummy; } ;



__attribute__((used)) static inline struct obs_python_script *
python_obs_callback_script(struct python_obs_callback *cb)
{
 return (struct obs_python_script *)cb->base.script;
}
