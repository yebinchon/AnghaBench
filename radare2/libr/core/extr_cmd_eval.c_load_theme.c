
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* cmdfilter; } ;
typedef TYPE_1__ RCore ;


 int r_cons_pal_update_event () ;
 int r_core_cmd_file (TYPE_1__*,char const*) ;
 int r_file_exists (char const*) ;

__attribute__((used)) static bool load_theme(RCore *core, const char *path) {
 if (!r_file_exists (path)) {
  return 0;
 }
 core->cmdfilter = "ec ";
 bool res = r_core_cmd_file (core, path);
 if (res) {
  r_cons_pal_update_event ();
 }
 core->cmdfilter = ((void*)0);
 return res;
}
