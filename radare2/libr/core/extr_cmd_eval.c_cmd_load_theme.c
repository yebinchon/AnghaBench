
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cons; } ;
struct TYPE_5__ {int context; } ;
typedef TYPE_2__ RCore ;


 int R2_HOME_THEMES ;
 int R2_THEMES ;
 int R_JOIN_2_PATHS (int ,char*) ;
 void* curtheme ;
 int eprintf (char*,char*) ;
 int free (char*) ;
 scalar_t__ load_theme (TYPE_2__*,char*) ;
 int r_cons_pal_init (int ) ;
 char* r_file_abspath (char*) ;
 int r_str_cmp (char const*,char*,int ) ;
 void* r_str_dup (void*,char*) ;
 char* r_str_home (char*) ;
 char* r_str_newf (int ,char*) ;
 char* r_str_r2_prefix (char*) ;
 void* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool cmd_load_theme(RCore *core, const char *_arg) {
 bool failed = 0;
 char *path;
 if (!_arg || !*_arg) {
  return 0;
 }
 if (!r_str_cmp (_arg, "default", strlen (_arg))) {
  curtheme = strdup (_arg);
  r_cons_pal_init (core->cons->context);
  return 1;
 }
 char *arg = strdup (_arg);

 char *tmp = r_str_newf (R_JOIN_2_PATHS (R2_HOME_THEMES, "%s"), arg);
 char *home = tmp ? r_str_home (tmp) : ((void*)0);
 free (tmp);

 tmp = r_str_newf (R_JOIN_2_PATHS (R2_THEMES, "%s"), arg);
 path = tmp ? r_str_r2_prefix (tmp) : ((void*)0);
 free (tmp);

 if (!load_theme (core, home)) {
  if (load_theme (core, path)) {
   curtheme = r_str_dup (curtheme, arg);
  } else {
   if (load_theme (core, arg)) {
    curtheme = r_str_dup (curtheme, arg);
   } else {
    char *absfile = r_file_abspath (arg);
    eprintf ("eco: cannot open colorscheme profile (%s)\n", absfile);
    free (absfile);
    failed = 1;
   }
  }
 }
 free (home);
 free (path);
 free (arg);
 return !failed;
}
