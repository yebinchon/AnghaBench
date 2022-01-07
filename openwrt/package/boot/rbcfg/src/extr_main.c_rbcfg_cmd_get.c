
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_env {int name; } ;


 int ARRAY_SIZE (struct rbcfg_env*) ;
 int RB_ERR_INVALID ;
 int RB_ERR_NOTFOUND ;
 int fprintf (int ,char*,char const*) ;
 char* rbcfg_env_get (struct rbcfg_env const*) ;
 struct rbcfg_env* rbcfg_envs ;
 int stdout ;
 scalar_t__ strcmp (int ,char const*) ;
 int usage () ;

__attribute__((used)) static int
rbcfg_cmd_get(int argc, const char *argv[])
{
 int err = RB_ERR_NOTFOUND;
 int i;

 if (argc != 1) {
  usage();
  return RB_ERR_INVALID;
 }

 for (i = 0; i < ARRAY_SIZE(rbcfg_envs); i++) {
  const struct rbcfg_env *env = &rbcfg_envs[i];
  const char *value;

  if (strcmp(env->name, argv[0]))
   continue;

  value = rbcfg_env_get(env);
  if (value) {
   fprintf(stdout, "%s\n", value);
   err = 0;
  }
  break;
 }

 return err;
}
