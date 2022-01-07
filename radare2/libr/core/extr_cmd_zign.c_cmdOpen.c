
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int help_msg_zo ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_sign_load (int ,char const*) ;
 int r_sign_load_gz (int ,char const*) ;
 int r_sign_save (int ,char const*) ;

__attribute__((used)) static int cmdOpen(void *data, const char *input) {
 RCore *core = (RCore *) data;

 switch (*input) {
 case ' ':
  if (input[1]) {
   return r_sign_load (core->anal, input + 1);
  }
  eprintf ("usage: zo filename\n");
  return 0;
 case 's':
  if (input[1] == ' ' && input[2]) {
   return r_sign_save (core->anal, input + 2);
  }
  eprintf ("usage: zos filename\n");
  return 0;
 case 'z':
  if (input[1] == ' ' && input[2]) {
   return r_sign_load_gz (core->anal, input + 2);
  }
  eprintf ("usage: zoz filename\n");
  return 0;
 case '?':
  r_core_cmd_help (core, help_msg_zo);
  break;
 default:
  eprintf ("usage: zo[zs] filename\n");
  return 0;
 }

 return 1;
}
