
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* num; int r_main_radiff2; int r_main_rax2; } ;
struct TYPE_4__ {int value; } ;
typedef TYPE_2__ RCore ;


 int __runMain (int ,char*) ;
 int free (char*) ;
 char* r_str_newf (char*,char const*) ;
 scalar_t__ r_str_startswith (char*,char const*) ;
 int r_sys_cmdf (char*,char*) ;

__attribute__((used)) static bool cmd_r2cmd(RCore *core, const char *_input) {
 char *input = r_str_newf ("r%s", _input);
 int rc = 0;
 if (r_str_startswith (input, "rax2")) {
  rc = __runMain (core->r_main_rax2, input);
 } else if (r_str_startswith (input, "radare2")) {
  r_sys_cmdf ("%s", input);

 } else if (r_str_startswith (input, "rasm2")) {
  r_sys_cmdf ("%s", input);

 } else if (r_str_startswith (input, "rabin2")) {
  r_sys_cmdf ("%s", input);

 } else if (r_str_startswith (input, "ragg2")) {
  r_sys_cmdf ("%s", input);

 } else if (r_str_startswith (input, "r2pm")) {
  r_sys_cmdf ("%s", input);

 } else if (r_str_startswith (input, "radiff2")) {
  rc = __runMain (core->r_main_radiff2, input);
 } else {
  const char *r2cmds[] = {
   "rax2", "r2pm", "rasm2", "rabin2", "rahash2", "rafind2", "rarun2", "ragg2", "radare2", "r2", ((void*)0)
  };
  int i;
  for (i = 0; r2cmds[i]; i++) {
   if (r_str_startswith (input, r2cmds[i])) {
    free (input);
    return 1;
   }
  }
  return 0;
 }
 free (input);
 core->num->value = rc;
 return 1;
}
