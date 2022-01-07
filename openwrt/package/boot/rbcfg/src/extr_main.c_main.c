
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_command {int flags; int (* exec ) (int,char const**) ;int command; } ;


 int ARRAY_SIZE (struct rbcfg_command*) ;
 int CMD_FLAG_USES_CFG ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int fixup_rbcfg_envs () ;
 int fprintf (int ,char*,char const*) ;
 int rbcfg_close () ;
 struct rbcfg_command* rbcfg_commands ;
 char* rbcfg_name ;
 int rbcfg_open () ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (int,char const**) ;
 int usage () ;

int main(int argc, const char *argv[])
{
 const struct rbcfg_command *cmd = ((void*)0);
 int ret;
 int i;

 rbcfg_name = (char *) argv[0];

 fixup_rbcfg_envs();

 if (argc < 2) {
  usage();
  return EXIT_FAILURE;
 }

 for (i = 0; i < ARRAY_SIZE(rbcfg_commands); i++) {
  if (strcmp(rbcfg_commands[i].command, argv[1]) == 0) {
   cmd = &rbcfg_commands[i];
   break;
  }
 }

 if (cmd == ((void*)0)) {
  fprintf(stderr, "unknown command '%s'\n", argv[1]);
  usage();
  return EXIT_FAILURE;
 }

 argc -= 2;
 argv += 2;

 if (cmd->flags & CMD_FLAG_USES_CFG) {
  ret = rbcfg_open();
  if (ret)
   return EXIT_FAILURE;
 }

 ret = cmd->exec(argc, argv);

 if (cmd->flags & CMD_FLAG_USES_CFG)
  rbcfg_close();

 if (ret)
  return EXIT_FAILURE;

 return EXIT_SUCCESS;
}
