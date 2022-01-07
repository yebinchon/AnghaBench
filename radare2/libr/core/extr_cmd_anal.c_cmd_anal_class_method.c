
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; int vtable_offset; scalar_t__ addr; } ;
struct TYPE_6__ {int anal; int num; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAnalMethod ;
typedef int RAnalClassErr ;




 int R_ANAL_CLASS_ERR_SUCCESS ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_ac ;
 int r_anal_class_method_delete (int ,char*,char*) ;
 int r_anal_class_method_rename (int ,char*,char*,char*) ;
 int r_anal_class_method_set (int ,char*,TYPE_2__*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 scalar_t__ r_num_get (int ,char*) ;
 char* r_str_trim_ro (char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void cmd_anal_class_method(RCore *core, const char *input) {
 RAnalClassErr err = R_ANAL_CLASS_ERR_SUCCESS;
 char c = input[0];
 switch (c) {
 case ' ':
 case '-':
 case 'n': {
  const char *str = r_str_trim_ro (input + 1);
  if (!*str) {
   eprintf ("No class name given.\n");
   break;
  }
  char *cstr = strdup (str);
  if (!cstr) {
   break;
  }
  char *end = strchr (cstr, ' ');
  if (!end) {
   eprintf ("No method name given.\n");
   free (cstr);
   break;
  }
  *end = '\0';
  char *name_str = end + 1;

  if (c == ' ' || c == 'n') {
   end = strchr (name_str, ' ');
   if (!end) {
    if (c == ' ') {
     eprintf ("No offset given.\n");
    } else if (c == 'n') {
     eprintf ("No new method name given.\n");
    }
    free (cstr);
    break;
   }
   *end = '\0';
  }

  if (c == ' ') {
   char *addr_str = end + 1;
   end = strchr (addr_str, ' ');
   if (end) {
    *end = '\0';
   }

   RAnalMethod meth;
   meth.name = name_str;
   meth.addr = r_num_get (core->num, addr_str);
   meth.vtable_offset = -1;
   if (end) {
    meth.vtable_offset = (int)r_num_get (core->num, end + 1);
   }
   err = r_anal_class_method_set (core->anal, cstr, &meth);
  } else if (c == 'n') {
   char *new_name_str = end + 1;
   end = strchr (new_name_str, ' ');
   if (end) {
    *end = '\0';
   }

   err = r_anal_class_method_rename (core->anal, cstr, name_str, new_name_str);
  } else if (c == '-') {
   err = r_anal_class_method_delete (core->anal, cstr, name_str);
  }

  free (cstr);
  break;
 }
 default:
  r_core_cmd_help (core, help_msg_ac);
  break;
 }

 switch (err) {
  case 128:
   eprintf ("Class does not exist.\n");
   break;
  case 129:
   eprintf ("Method does not exist.\n");
   break;
  default:
   break;
 }
}
