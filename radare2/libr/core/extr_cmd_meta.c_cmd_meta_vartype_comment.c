
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int offset; int anal; int num; } ;
typedef TYPE_1__ RCore ;


 int R_META_TYPE_VARTYPE ;
 int free (char*) ;
 int help_msg_Ct ;
 char* malloc (int ) ;
 int r_cons_println (char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_meta_del (int ,int ,int ,int) ;
 char* r_meta_get_string (int ,int ,int ) ;
 int r_meta_list (int ,int ,int ) ;
 int r_meta_set_string (int ,int ,int ,char*) ;
 int r_num_math (int ,char const*) ;
 char* r_str_trim_ro (char const*) ;
 int r_str_unescape (char*) ;
 int r_sys_perror (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int cmd_meta_vartype_comment(RCore *core, const char *input) {
 ut64 addr = core->offset;
 switch (input[1]) {
 case '?':
  r_core_cmd_help (core, help_msg_Ct);
  break;
 case 0:
  r_meta_list (core->anal, R_META_TYPE_VARTYPE, 0);
  break;
 case ' ':
  {
  const char* newcomment = r_str_trim_ro (input + 2);
  char *text, *comment = r_meta_get_string (core->anal, R_META_TYPE_VARTYPE, addr);
  char *nc = strdup (newcomment);
  r_str_unescape (nc);
  if (comment) {
   text = malloc (strlen (comment)+ strlen (newcomment)+2);
   if (text) {
    strcpy (text, comment);
    strcat (text, " ");
    strcat (text, nc);
    r_meta_set_string (core->anal, R_META_TYPE_VARTYPE, addr, text);
    free (comment);
    free (text);
   } else {
    r_sys_perror ("malloc");
   }
  } else {
   r_meta_set_string (core->anal, R_META_TYPE_VARTYPE, addr, nc);
  }
  free (nc);
  }
  break;
 case '.':
  {
  ut64 at = input[2]? r_num_math (core->num, input + 2): addr;
  char *comment = r_meta_get_string (
    core->anal, R_META_TYPE_VARTYPE, at);
  if (comment) {
   r_cons_println (comment);
   free (comment);
  }
  }
  break;
 case '-':
  r_meta_del (core->anal, R_META_TYPE_VARTYPE, core->offset, 1);
  break;
 default:
  r_core_cmd_help (core, help_msg_Ct);
  break;
 }

 return 1;
}
