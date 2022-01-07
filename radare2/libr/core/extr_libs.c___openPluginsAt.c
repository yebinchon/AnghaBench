
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lib; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 int r_lib_opendir (int ,char*) ;
 char* r_str_r2_prefix (char const*) ;

__attribute__((used)) static void __openPluginsAt(RCore *core, const char *arg) {
 char *pdir = r_str_r2_prefix (arg);
 if (pdir) {
  r_lib_opendir (core->lib, pdir);
  free (pdir);
 }
}
