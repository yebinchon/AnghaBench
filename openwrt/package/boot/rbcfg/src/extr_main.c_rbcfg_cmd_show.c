
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_env {char* name; } ;


 int ARRAY_SIZE (struct rbcfg_env*) ;
 int RB_ERR_INVALID ;
 int fprintf (int ,char*,char*,char const*) ;
 char* rbcfg_env_get (struct rbcfg_env const*) ;
 struct rbcfg_env* rbcfg_envs ;
 int stdout ;
 int usage () ;

__attribute__((used)) static int
rbcfg_cmd_show(int argc, const char *argv[])
{
 int i;

 if (argc != 0) {
  usage();
  return RB_ERR_INVALID;
 }

 for (i = 0; i < ARRAY_SIZE(rbcfg_envs); i++) {
  const struct rbcfg_env *env = &rbcfg_envs[i];
  const char *value;

  value = rbcfg_env_get(env);
  if (value)
   fprintf(stdout, "%s=%s\n", env->name, value);
 }

 return 0;
}
