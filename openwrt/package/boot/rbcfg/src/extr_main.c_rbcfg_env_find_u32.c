
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ u32; } ;
struct rbcfg_value {TYPE_1__ val; } ;
struct rbcfg_env {unsigned int num_values; struct rbcfg_value* values; } ;



__attribute__((used)) static const struct rbcfg_value *
rbcfg_env_find_u32(const struct rbcfg_env *env, uint32_t val)
{
 unsigned i;

 for (i = 0; i < env->num_values; i++) {
  const struct rbcfg_value *v = &env->values[i];

  if (v->val.u32 == val)
   return v;
 }

 return ((void*)0);
}
