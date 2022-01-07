
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* id; char* class_name; int offset; } ;
struct TYPE_6__ {int anal; int num; } ;
typedef TYPE_1__ RCore ;
typedef scalar_t__ RAnalClassErr ;
typedef TYPE_2__ RAnalBaseClass ;


 scalar_t__ R_ANAL_CLASS_ERR_NONEXISTENT_CLASS ;
 scalar_t__ R_ANAL_CLASS_ERR_SUCCESS ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_ac ;
 scalar_t__ r_anal_class_base_delete (int ,char*,char*) ;
 scalar_t__ r_anal_class_base_set (int ,char*,TYPE_2__*) ;
 int r_anal_class_list_bases (int ,char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_num_get (int ,char*) ;
 char* r_str_trim_ro (char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void cmd_anal_class_base(RCore *core, const char *input) {
 RAnalClassErr err = R_ANAL_CLASS_ERR_SUCCESS;
 char c = input[0];
 switch (c) {
 case ' ':
 case '-': {
  const char *str = r_str_trim_ro (input + 1);
  if (!*str) {
   eprintf ("No class name given.\n");
   return;
  }
  char *cstr = strdup (str);
  if (!cstr) {
   break;
  }
  char *end = strchr (cstr, ' ');
  if (end) {
   *end = '\0';
   end++;
  }

  if (!end || *end == '\0') {
   if (c == ' ') {
    r_anal_class_list_bases (core->anal, cstr);
   } else {
    eprintf ("No base id given.\n");
   }
   free (cstr);
   break;
  }

  char *base_str = end;
  end = strchr (base_str, ' ');
  if (end) {
   *end = '\0';
  }

  if (c == '-') {
   err = r_anal_class_base_delete (core->anal, cstr, base_str);
   free (cstr);
   break;
  }

  RAnalBaseClass base;
  base.id = ((void*)0);
  base.offset = 0;
  base.class_name = base_str;

  if (end) {
   base.offset = r_num_get (core->num, end + 1);
  }

  err = r_anal_class_base_set (core->anal, cstr, &base);
  free (base.id);
  free (cstr);
  break;
 }
 default:
  r_core_cmd_help (core, help_msg_ac);
  break;
 }

 if (err == R_ANAL_CLASS_ERR_NONEXISTENT_CLASS) {
  eprintf ("Class does not exist.\n");
 }
}
