
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rcmd; } ;
struct TYPE_4__ {int macro; } ;
typedef TYPE_2__ RCore ;


 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_lparen ;
 int memmove (char*,int ,int ) ;
 int r_cmd_macro_add (int *,char*) ;
 int r_cmd_macro_break (int *,char const*) ;
 int r_cmd_macro_call (int *,char*) ;
 int r_cmd_macro_list (int *) ;
 int r_cmd_macro_meta (int *) ;
 int r_cmd_macro_rm (int *,char const*) ;
 int r_core_cmd_help (TYPE_2__*,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static int cmd_macro(void *data, const char *input) {
 char *buf = ((void*)0);
 RCore *core = (RCore*)data;

 switch (*input) {
 case ')':
  r_cmd_macro_break (&core->rcmd->macro, input + 1);
  break;
 case '-':
  r_cmd_macro_rm (&core->rcmd->macro, input + 1);
  break;
 case '*':
  r_cmd_macro_meta (&core->rcmd->macro);
  break;
 case '\0':
  r_cmd_macro_list (&core->rcmd->macro);
  break;
 case '(':
 case '?':
  r_core_cmd_help (core, help_msg_lparen);
  break;
 default: {


  int mustcall = 0;
  int i, j = 0;
  buf = strdup (input);

  for (i = 0; buf[i]; i++) {
   switch (buf[i]) {
   case '(':
    j++;
    break;
   case ')':
    j--;
    if (buf[i+1] =='(') {
     buf[i + 1] = 0;
     mustcall = i + 2;
    }
    break;
   }
  }
  buf[strlen (buf) - 1]=0;
  r_cmd_macro_add (&core->rcmd->macro, buf);
  if (mustcall) {
   char *comma = strchr (buf, ' ');
   if (!comma) {
    comma = strchr (buf, ',');
   }
   if (comma) {
    *comma = ' ';
    memmove (comma + 1, buf + mustcall, strlen (buf + mustcall) + 1);
    r_cmd_macro_call (&core->rcmd->macro, buf);
   } else {
    eprintf ("Invalid syntax for macro\n");
   }
  }
  free (buf);
  } break;
 }
 return 0;
}
