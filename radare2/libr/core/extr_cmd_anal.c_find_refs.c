
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
typedef int cmd ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*,...) ;
 int r_core_cmd0 (TYPE_1__*,char*) ;
 int r_core_seek (TYPE_1__*,int ,int) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void find_refs(RCore *core, const char *glob) {
 char cmd[128];
 ut64 curseek = core->offset;
 while (*glob == ' ') glob++;
 if (!*glob) {
  glob = "str.";
 }
 if (*glob == '?') {
  eprintf ("Usage: axF [flag-str-filter]\n");
  return;
 }
 eprintf ("Finding references of flags matching '%s'...\n", glob);
 snprintf (cmd, sizeof (cmd) - 1, ".(findstref) @@= `f~%s[0]`", glob);
 r_core_cmd0 (core, "(findstref,f here=$$,s entry0,/r here,f-here)");
 r_core_cmd0 (core, cmd);
 r_core_cmd0 (core, "(-findstref)");
 r_core_seek (core, curseek, 1);
}
