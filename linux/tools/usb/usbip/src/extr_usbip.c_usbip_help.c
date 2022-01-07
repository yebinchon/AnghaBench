
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {char* name; char* help; int (* usage ) () ;} ;


 struct command* cmds ;
 int printf (char*,...) ;
 int strcmp (char*,char*) ;
 int stub1 () ;
 int usbip_usage () ;

__attribute__((used)) static int usbip_help(int argc, char *argv[])
{
 const struct command *cmd;
 int i;
 int ret = 0;

 if (argc > 1 && argv++) {
  for (i = 0; cmds[i].name != ((void*)0); i++)
   if (!strcmp(cmds[i].name, argv[0]) && cmds[i].usage) {
    cmds[i].usage();
    goto done;
   }
  ret = -1;
 }

 usbip_usage();
 printf("\n");
 for (cmd = cmds; cmd->name != ((void*)0); cmd++)
  if (cmd->help != ((void*)0))
   printf("  %-10s %s\n", cmd->name, cmd->help);
 printf("\n");
done:
 return ret;
}
