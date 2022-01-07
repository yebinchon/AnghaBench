
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int meta_spaces; } ;
struct TYPE_14__ {TYPE_2__* anal; int offset; int num; } ;
typedef int RSpaces ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;


 int R_ANAL_FCN_TYPE_FCN ;
 int R_ANAL_FCN_TYPE_SYM ;
 int R_META_TYPE_ANY ;
 int UT64_MAX ;
 int cmd_meta_comment (TYPE_1__*,char const*) ;
 int cmd_meta_lineinfo (TYPE_1__*,char const*) ;
 int cmd_meta_others (TYPE_1__*,char const*) ;
 int cmd_meta_vartype_comment (TYPE_1__*,char const*) ;
 int eprintf (char*) ;
 int help_msg_C ;
 int help_msg_CS ;
 int * r_anal_get_fcn_in (TYPE_2__*,int ,int) ;
 int r_anal_str_to_fcn (TYPE_2__*,int *,char const*) ;
 int r_comment_vars (TYPE_1__*,char const*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_meta_cleanup (TYPE_2__*,long long,int ) ;
 int r_meta_del (TYPE_2__*,int ,int ,int) ;
 int r_meta_list (TYPE_2__*,int ,char const) ;
 int r_meta_list_offset (TYPE_2__*,int ,char const) ;
 int r_num_math (int ,char const*) ;
 int r_spaces_pop (int *) ;
 int r_spaces_push (int *,char const*) ;
 int r_spaces_rename (int *,int *,char const*) ;
 int r_spaces_set (int *,char const*) ;
 int r_spaces_unset (int *,char const*) ;
 int spaces_list (int *,char const) ;

__attribute__((used)) static int cmd_meta(void *data, const char *input) {
 RCore *core = (RCore*)data;
 RAnalFunction *f;
 RSpaces *ms;
 int i;

 switch (*input) {
 case 'v':
  r_comment_vars (core, input + 1);
  break;
 case '\0':
  r_meta_list (core->anal, R_META_TYPE_ANY, 0);
  break;
 case 'j':
 case '*': {
  if (!input[0] || input[1] == '.') {
   r_meta_list_offset (core->anal, core->offset, *input);
  } else {
   r_meta_list (core->anal, R_META_TYPE_ANY, *input);
  }
  break;
 }
 case '.': {
  r_meta_list_offset (core->anal, core->offset, 0);
  break;
 }
 case 'L':
  cmd_meta_lineinfo (core, input + 1);
  break;
 case 'C':
  cmd_meta_comment (core, input);
  break;
 case 't':
  cmd_meta_vartype_comment (core, input);
  break;
 case 'r':
 case 'h':
 case 's':
 case 'z':
 case 'd':
 case 'm':
 case 'f':
  cmd_meta_others (core, input);
  break;
 case '-':
  if (input[1] != '*') {
   i = input[1] ? r_num_math (core->num, input + (input[1] == ' ' ? 2 : 1)) : 1;
   r_meta_del (core->anal, R_META_TYPE_ANY, core->offset, i);
  } else r_meta_cleanup (core->anal, 0LL, UT64_MAX);
  break;
 case '?':
  r_core_cmd_help (core, help_msg_C);
  break;
 case 'F':
  f = r_anal_get_fcn_in (core->anal, core->offset,
   R_ANAL_FCN_TYPE_FCN|R_ANAL_FCN_TYPE_SYM);
  if (f) {
   r_anal_str_to_fcn (core->anal, f, input + 2);
  } else {
   eprintf ("Cannot find function here\n");
  }
  break;
 case 'S':
  ms = &core->anal->meta_spaces;

  switch (input[1]) {
  case '?':
   r_core_cmd_help (core, help_msg_CS);
   break;
  case '+':
   r_spaces_push (ms, input + 2);
   break;
  case 'r':
   if (input[2] == ' ') {
    r_spaces_rename (ms, ((void*)0), input+2);
   } else {
    eprintf ("Usage: CSr [newname]\n");
   }
   break;
  case '-':
   if (input[2]) {
    if (input[2]=='*') {
     r_spaces_unset (ms, ((void*)0));
    } else {
     r_spaces_unset (ms, input+2);
    }
   } else {
    r_spaces_pop (ms);
   }
   break;
  case 'j':
  case '\0':
  case '*':
   spaces_list (ms, input[1]);
   break;
  case ' ':
   r_spaces_set (ms, input + 2);
   break;
  default:
   spaces_list (ms, 0);
   break;
  }
  break;
 }
 return 1;
}
