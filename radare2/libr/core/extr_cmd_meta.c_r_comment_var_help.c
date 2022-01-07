
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int help_msg_Cvb ;
 int help_msg_Cvr ;
 int help_msg_Cvs ;
 int r_cons_printf (char*) ;
 int r_core_cmd_help (int *,int ) ;

void r_comment_var_help(RCore *core, char type) {
 switch (type) {
 case 'b':
  r_core_cmd_help (core, help_msg_Cvb);
  break;
 case 's':
  r_core_cmd_help (core, help_msg_Cvs);
  break;
 case 'r':
  r_core_cmd_help (core, help_msg_Cvr);
  break;
 case '?':
  r_cons_printf("See Cvb?, Cvs? and Cvr?\n");
 }
}
