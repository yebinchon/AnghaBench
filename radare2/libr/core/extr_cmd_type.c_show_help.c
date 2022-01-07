
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int help_msg_t ;
 int r_core_cmd_help (int *,int ) ;

__attribute__((used)) static void show_help(RCore *core) {
 r_core_cmd_help (core, help_msg_t);
}
