
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; int args; int name; } ;
typedef TYPE_1__ RCmdJavaCmd ;


 int eprintf (char*,int ,int ,int ) ;

__attribute__((used)) static void r_cmd_java_print_cmd_help (RCmdJavaCmd *cmd) {
 eprintf ("[*] %s %s\n[+] %s\n\n", cmd->name, cmd->args, cmd->desc);
}
