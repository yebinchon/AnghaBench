
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u32; } ;
struct rbcfg_value {TYPE_1__ val; } ;
struct rbcfg_env {int id; } ;


 int RB_ERR_INVALID ;
 int fprintf (int ,char*,char const*) ;
 int rbcfg_ctx ;
 struct rbcfg_value* rbcfg_env_find (struct rbcfg_env const*,char const*) ;
 int rbcfg_set_u32 (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static int
rbcfg_env_set_u32(const struct rbcfg_env *env, const char *data)
{
 const struct rbcfg_value *v;
 int err;

 v = rbcfg_env_find(env, data);
 if (v == ((void*)0)) {
  fprintf(stderr, "invalid value '%s'\n", data);
  return RB_ERR_INVALID;
 }

 err = rbcfg_set_u32(rbcfg_ctx, env->id, v->val.u32);
 return err;
}
