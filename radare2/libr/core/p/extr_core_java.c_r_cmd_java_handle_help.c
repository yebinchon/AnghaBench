
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_5__ {char* desc; } ;
struct TYPE_4__ {char* name; char* args; char* desc; } ;
typedef int RCore ;
typedef TYPE_1__ RCmdJavaCmd ;


 int END_CMDS ;
 TYPE_1__* JAVA_CMDS ;
 int free (char const**) ;
 scalar_t__ malloc (int) ;
 int r_core_cmd_help (int *,char const**) ;
 TYPE_2__ r_core_plugin_java ;

__attribute__((used)) static int r_cmd_java_handle_help (RCore * core, const char * input) {
 ut32 i = 0;
 const char **help_msg = (const char**)malloc (sizeof(char *) * END_CMDS*4);
 help_msg[0] = "Usage:";
 help_msg[1] = "java [cmd] [arg..] ";
 help_msg[2] = r_core_plugin_java.desc;
 for (i = 0; i <END_CMDS; i++) {
  RCmdJavaCmd *cmd = &JAVA_CMDS[i];
  help_msg[3+(i*3)+0] = cmd->name;
  help_msg[3+(i*3)+1] = cmd->args;
  help_msg[3+(i*3)+2] = cmd->desc;
 }
 help_msg[3+(i*3)] = ((void*)0);
 r_core_cmd_help (core, help_msg);
 free (help_msg);
 return 1;
}
