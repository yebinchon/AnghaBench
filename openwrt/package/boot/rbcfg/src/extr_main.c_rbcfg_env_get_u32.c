
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rbcfg_value {char const* name; } ;
struct rbcfg_env {char* name; int id; } ;


 int fprintf (int ,char*,int,char*) ;
 int rbcfg_ctx ;
 struct rbcfg_value* rbcfg_env_find_u32 (struct rbcfg_env const*,int) ;
 int rbcfg_get_u32 (int ,int ,int*) ;
 int stderr ;

__attribute__((used)) static const char *
rbcfg_env_get_u32(const struct rbcfg_env *env)
{
 const struct rbcfg_value *v;
 uint32_t val;
 int err;

 err = rbcfg_get_u32(rbcfg_ctx, env->id, &val);
 if (err)
  return ((void*)0);

 v = rbcfg_env_find_u32(env, val);
 if (v == ((void*)0)) {
  fprintf(stderr, "unknown value %08x found for %s\n",
   val, env->name);
  return ((void*)0);
 }

 return v->name;
}
