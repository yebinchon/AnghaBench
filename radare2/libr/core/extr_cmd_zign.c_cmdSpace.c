
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int zign_spaces; } ;
typedef int RSpaces ;
typedef TYPE_2__ RCore ;


 int eprintf (char*) ;
 int help_msg_zs ;
 int r_core_cmd_help (TYPE_2__*,int ) ;
 int r_spaces_pop (int *) ;
 int r_spaces_push (int *,char const*) ;
 int r_spaces_rename (int *,int *,char const*) ;
 int r_spaces_set (int *,char const*) ;
 int r_spaces_unset (int *,char const*) ;
 int spaces_list (int *,char const) ;

__attribute__((used)) static int cmdSpace(void *data, const char *input) {
 RCore *core = (RCore *) data;
 RSpaces *zs = &core->anal->zign_spaces;

 switch (*input) {
 case '+':
  if (!input[1]) {
   eprintf ("usage: zs+zignspace\n");
   return 0;
  }
  r_spaces_push (zs, input + 1);
  break;
 case 'r':
  if (input[1] != ' ' || !input[2]) {
   eprintf ("usage: zsr newname\n");
   return 0;
  }
  r_spaces_rename (zs, ((void*)0), input + 2);
  break;
 case '-':
  if (input[1] == '\x00') {
   r_spaces_pop (zs);
  } else if (input[1] == '*') {
   r_spaces_unset (zs, ((void*)0));
  } else {
   r_spaces_unset (zs, input + 1);
  }
  break;
 case 'j':
 case '*':
 case '\0':
  spaces_list (zs, input[0]);
  break;
 case ' ':
  if (!input[1]) {
   eprintf ("usage: zs zignspace\n");
   return 0;
  }
  r_spaces_set (zs, input + 1);
  break;
 case '?':
  r_core_cmd_help (core, help_msg_zs);
  break;
 default:
  eprintf ("usage: zs[+-*] [namespace]\n");
  return 0;
 }

 return 1;
}
