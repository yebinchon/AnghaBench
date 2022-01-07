
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lib; int config; } ;
typedef TYPE_1__ RCore ;


 int R2_BINDINGS ;
 int R2_EXTRAS ;
 int R2_HOME_PLUGINS ;
 int R2_PLUGINS ;
 int R_CORE_LOADLIBS_CONFIG ;
 int R_CORE_LOADLIBS_ENV ;
 int R_CORE_LOADLIBS_HOME ;
 int R_CORE_LOADLIBS_SYSTEM ;
 int R_LIB_ENV ;
 int __openPluginsAt (TYPE_1__*,int ) ;
 int free (char*) ;
 char* r_config_get (int ,char*) ;
 int r_lib_opendir (int ,char const*) ;
 char* r_str_home (int ) ;
 char* r_sys_getenv (int ) ;

__attribute__((used)) static void __loadSystemPlugins(RCore *core, int where, const char *path) {
}
