
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int autocomplete; } ;
typedef TYPE_1__ RCore ;


 int R_CORE_AUTOCMPLT_FLAG ;
 int r_core_autocomplete_add (int ,char const*,int ,int) ;

__attribute__((used)) static void __foreach(RCore *core, const char **cmds, int type) {
 int i;
 for (i = 0; cmds[i]; i++) {
  r_core_autocomplete_add (core->autocomplete, cmds[i], R_CORE_AUTOCMPLT_FLAG, 1);
 }
}
