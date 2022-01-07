
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_value {int name; } ;
struct rbcfg_env {unsigned int num_values; struct rbcfg_value* values; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const struct rbcfg_value *
rbcfg_env_find(const struct rbcfg_env *env, const char *name)
{
 unsigned i;

 for (i = 0; i < env->num_values; i++) {
  const struct rbcfg_value *v = &env->values[i];

  if (strcmp(v->name, name) == 0)
   return v;
 }

 return ((void*)0);
}
