
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int anal; } ;
typedef TYPE_1__ RCore ;
typedef int RAnalClassErr ;


 int R_ANAL_CLASS_ERR_CLASH ;
 int R_ANAL_CLASS_ERR_NONEXISTENT_CLASS ;
 int cmd_anal_class_base (TYPE_1__*,char const*) ;
 int cmd_anal_class_method (TYPE_1__*,char const*) ;
 int cmd_anal_class_vtable (TYPE_1__*,char const*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_ac ;
 int r_anal_class_create (int ,char*) ;
 int r_anal_class_delete (int ,char*) ;
 int r_anal_class_list (int ,char const) ;
 int r_anal_class_rename (int ,char*,char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 char* r_str_trim_ro (char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void cmd_anal_classes(RCore *core, const char *input) {
 switch (input[0]) {
 case 'l':
  r_anal_class_list (core->anal, input[1]);
  break;
 case ' ':
 case '-':
 case 'n': {
  const char *str = r_str_trim_ro (input + 1);
  if (!*str) {
   break;
  }
  char *cstr = strdup (str);
  if (!cstr) {
   break;
  }
  char *end = strchr (cstr, ' ');
  if (end) {
   *end = '\0';
  }
  if (input[0] == '-') {
   r_anal_class_delete (core->anal, cstr);
  } else if(input[0] == 'n') {
   if (!end) {
    eprintf ("No new class name given.\n");
   } else {
    char *new_name = end + 1;
    end = strchr (new_name, ' ');
    if (end) {
     *end = '\0';
    }
    RAnalClassErr err = r_anal_class_rename (core->anal, cstr, new_name);
    if (err == R_ANAL_CLASS_ERR_NONEXISTENT_CLASS) {
     eprintf ("Class does not exist.\n");
    } else if (err == R_ANAL_CLASS_ERR_CLASH) {
     eprintf ("A class with this name already exists.\n");
    }
   }
  } else {
   r_anal_class_create (core->anal, cstr);
  }
  free (cstr);
  break;
 }
 case 'v':
  cmd_anal_class_vtable (core, input + 1);
  break;
 case 'b':
  cmd_anal_class_base (core, input + 1);
  break;
 case 'm':
  cmd_anal_class_method (core, input + 1);
  break;
 default:
  r_core_cmd_help (core, help_msg_ac);
  break;
 }
}
