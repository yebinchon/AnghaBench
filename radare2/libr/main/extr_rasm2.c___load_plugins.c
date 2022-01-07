
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int l; } ;
typedef TYPE_1__ RAsmState ;


 int R2_BINDINGS ;
 int R2_EXTRAS ;
 int R2_HOME_PLUGINS ;
 int R2_PLUGINS ;
 char* R_LIB_ENV ;
 int R_LIB_TYPE_ANAL ;
 int R_LIB_TYPE_ASM ;
 int __lib_anal_cb ;
 int __lib_asm_cb ;
 int free (char*) ;
 int r_lib_add_handler (int ,int ,char*,int *,int *,TYPE_1__*) ;
 int r_lib_opendir (int ,char*) ;
 char* r_str_home (int ) ;
 char* r_str_r2_prefix (int ) ;
 char* r_sys_getenv (char*) ;

__attribute__((used)) static void __load_plugins(RAsmState *as) {
 char *tmp = r_sys_getenv ("RASM2_NOPLUGINS");
 if (tmp) {
  free (tmp);
  return;
 }
 r_lib_add_handler (as->l, R_LIB_TYPE_ASM, "(dis)assembly plugins", &__lib_asm_cb, ((void*)0), as);
 r_lib_add_handler (as->l, R_LIB_TYPE_ANAL, "analysis/emulation plugins", &__lib_anal_cb, ((void*)0), as);

 char *path = r_sys_getenv (R_LIB_ENV);
 if (path && *path) {
  r_lib_opendir (as->l, path);
 }


 char *homeplugindir = r_str_home (R2_HOME_PLUGINS);
 r_lib_opendir (as->l, homeplugindir);
 free (homeplugindir);


 char *plugindir = r_str_r2_prefix (R2_PLUGINS);
 char *extrasdir = r_str_r2_prefix (R2_EXTRAS);
 char *bindingsdir = r_str_r2_prefix (R2_BINDINGS);
 r_lib_opendir (as->l, plugindir);
 r_lib_opendir (as->l, extrasdir);
 r_lib_opendir (as->l, bindingsdir);
 free (plugindir);
 free (extrasdir);
 free (bindingsdir);

 free (tmp);
 free (path);
}
