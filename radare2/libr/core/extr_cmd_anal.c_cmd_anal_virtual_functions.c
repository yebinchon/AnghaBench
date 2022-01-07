
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int anal; } ;
typedef TYPE_1__ RCore ;


 int cmd_anal_rtti (TYPE_1__*,char const*) ;
 int help_msg_av ;
 int r_anal_list_vtables (int ,char const) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;

__attribute__((used)) static void cmd_anal_virtual_functions(RCore *core, const char* input) {
 switch (input[0]) {
 case '\0':
 case '*':
 case 'j':
  r_anal_list_vtables (core->anal, input[0]);
  break;
 case 'r':
  cmd_anal_rtti (core, input + 1);
  break;
 default :
  r_core_cmd_help (core, help_msg_av);
  break;
 }
}
