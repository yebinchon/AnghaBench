
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int cmdremote; int io; } ;
typedef TYPE_1__ RCore ;


 int aliascmd (TYPE_1__*,char const*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int getArg (char const,char) ;
 int help_msg_equal ;
 int help_msg_equalg ;
 int help_msg_equalh ;
 int r_cons_printf (char*,char*) ;
 int r_cons_println (int ) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_core_rtr_add (TYPE_1__*,char const*) ;
 int r_core_rtr_cmd (TYPE_1__*,char const*) ;
 int r_core_rtr_gdb (TYPE_1__*,int ,char const*) ;
 int r_core_rtr_http (TYPE_1__*,int ,char,char const*) ;
 int r_core_rtr_list (TYPE_1__*) ;
 int r_core_rtr_pushout (TYPE_1__*,char const*) ;
 int r_core_rtr_remove (TYPE_1__*,char const*) ;
 int r_core_rtr_session (TYPE_1__*,char const*) ;
 char* r_io_system (int ,char const*) ;
 int r_str_bool (int) ;
 char* r_str_trim_ro (char const*) ;

__attribute__((used)) static int cmd_rap(void *data, const char *input) {
 RCore *core = (RCore *)data;
 switch (*input) {
 case '\0':
  r_core_rtr_list (core);
  break;
 case 'j':
  eprintf ("TODO: list connections in json\n");
  break;
 case '!':
  if (input[1] == '=') {

   core->cmdremote = input[2]? 1: 0;
   r_cons_println (r_str_bool (core->cmdremote));
  } else {
   char *res = r_io_system (core->io, input + 1);
   if (res) {
    r_cons_printf ("%s\n", res);
    free (res);
   }
  }
  break;
 case '$':

  aliascmd (core, input + 1);
  break;
 case '+':
  r_core_rtr_add (core, input + 1);
  break;
 case '-':
  r_core_rtr_remove (core, input + 1);
  break;

 case '<':
  r_core_rtr_pushout (core, input + 1);
  break;
 case '=':
  r_core_rtr_session (core, input + 1);
  break;
 case 'g':
  if (input[1] == '?') {
   r_core_cmd_help (core, help_msg_equalg);
  } else {
   r_core_rtr_gdb (core, getArg (input[1], 'g'), input + 1);
  }
  break;
 case 'h':
  if (input[1] == '?') {
   r_core_cmd_help (core, help_msg_equalh);
  } else {
   r_core_rtr_http (core, getArg (input[1], 'h'), 'h', input + 1);
  }
  break;
 case 'H':
  if (input[1] == '?') {
   r_core_cmd_help (core, help_msg_equalh);
  } else {
   const char *arg = r_str_trim_ro (input + 1);
   r_core_rtr_http (core, getArg (input[1], 'H'), 'H', arg);
  }
  break;
 case '?':
  r_core_cmd_help (core, help_msg_equal);
  break;
 default:
  r_core_rtr_cmd (core, input);
  break;
 }
 return 0;
}
