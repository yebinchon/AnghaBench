
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int help_msg_env ;
 int help_msg_percent ;
 int r_core_cmd_help (int *,int ) ;

__attribute__((used)) static void cmd_help_percent(RCore *core) {
 r_core_cmd_help (core, help_msg_percent);
 r_core_cmd_help (core, help_msg_env);
}
