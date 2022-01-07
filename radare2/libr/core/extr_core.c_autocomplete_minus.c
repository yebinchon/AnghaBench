
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcmd; } ;
typedef int RLineCompletion ;
typedef TYPE_1__ RCore ;


 char** r_cmd_alias_keys (int ,int*) ;
 int r_line_completion_push (int *,char*) ;
 int r_return_if_fail (char const*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static void autocomplete_minus(RCore *core, RLineCompletion *completion, const char *str) {
 r_return_if_fail (str);
 int count;
 int length = strlen (str);
 char **keys = r_cmd_alias_keys(core->rcmd, &count);
 if (!keys) {
  return;
 }
 int i;
 for (i = 0; i < count; i++) {
  if (!strncmp (keys[i], str, length)) {
   r_line_completion_push (completion, keys[i]);
  }
 }
}
