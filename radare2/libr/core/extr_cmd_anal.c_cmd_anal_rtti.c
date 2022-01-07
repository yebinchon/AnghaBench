
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int anal; int offset; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 int help_msg_av ;
 char* r_anal_rtti_demangle_class_name (int ,char*) ;
 int r_anal_rtti_print_all (int ,char const) ;
 int r_anal_rtti_print_at_vtable (int ,int ,char const) ;
 int r_anal_rtti_recover_all (int ) ;
 int r_cons_println (char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 char* r_str_trim_dup (char const*) ;

__attribute__((used)) static void cmd_anal_rtti(RCore *core, const char *input) {
 switch (input[0]) {
 case '\0':
 case 'j':
  r_anal_rtti_print_at_vtable (core->anal, core->offset, input[0]);
  break;
 case 'a':
  r_anal_rtti_print_all (core->anal, input[1]);
  break;
 case 'r':
  r_anal_rtti_recover_all (core->anal);
  break;
 case 'D': {
  char *name = r_str_trim_dup (input + 1);
  char *demangled = r_anal_rtti_demangle_class_name (core->anal, name);
  free (name);
  if (demangled) {
   r_cons_println (demangled);
   free (demangled);
  }
  break;
 }
 default :
  r_core_cmd_help (core, help_msg_av);
  break;
 }
}
