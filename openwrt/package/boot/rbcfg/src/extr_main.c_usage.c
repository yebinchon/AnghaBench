
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_value {char* name; char* desc; } ;
struct rbcfg_env {char* usage; char* name; int num_values; struct rbcfg_value* values; } ;
struct rbcfg_command {char* usage; char* name; int num_values; struct rbcfg_value* values; } ;
typedef int buf ;


 int ARRAY_SIZE (struct rbcfg_env*) ;
 int fprintf (int ,char*,...) ;
 struct rbcfg_env* rbcfg_commands ;
 struct rbcfg_env* rbcfg_envs ;
 char* rbcfg_name ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 char buf[255];
 int len;
 int i;

 fprintf(stderr, "Usage: %s <command>\n", rbcfg_name);

 fprintf(stderr, "\nCommands:\n");
 for (i = 0; i < ARRAY_SIZE(rbcfg_commands); i++) {
  const struct rbcfg_command *cmd;
  cmd = &rbcfg_commands[i];

  len = snprintf(buf, sizeof(buf), "%s", cmd->usage);
  buf[len] = '\0';
  fprintf(stderr, "%s\n", buf);
 }

 fprintf(stderr, "\nConfiguration options:\n");
 for (i = 0; i < ARRAY_SIZE(rbcfg_envs); i++) {
  const struct rbcfg_env *env;
  int j;

  env = &rbcfg_envs[i];
  fprintf(stderr, "\n%s:\n", env->name);
  for (j = 0; j < env->num_values; j++) {
   const struct rbcfg_value *v = &env->values[j];
   fprintf(stderr, "\t%-12s %s\n", v->name, v->desc);
  }
 }
 fprintf(stderr, "\n");
}
