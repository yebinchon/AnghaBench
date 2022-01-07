
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_env {int type; } ;



 char* rbcfg_env_get_u32 (struct rbcfg_env const*) ;

__attribute__((used)) static const char *
rbcfg_env_get(const struct rbcfg_env *env)
{
 const char *ret = ((void*)0);

 switch (env->type) {
 case 128:
  ret = rbcfg_env_get_u32(env);
  break;
 }

 return ret;
}
