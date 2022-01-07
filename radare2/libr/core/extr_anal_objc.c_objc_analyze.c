
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int print; int config; } ;
typedef TYPE_1__ RCore ;


 int r_config_get (int ,char*) ;
 int r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 int r_core_cmd0 (TYPE_1__*,char*) ;
 char* r_print_rowlog (int ,char*) ;
 int r_print_rowlog_done (int ,char const*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void objc_analyze(RCore *core) {
 static const char *oldstr = ((void*)0);
 oldstr = r_print_rowlog (core->print, "Analyzing searching references to selref");
 r_core_cmd0 (core, "aar");
 if (!strcmp ("arm", r_config_get (core->config, "asm.arch"))) {
  bool emu_lazy = r_config_get_i (core->config, "emu.lazy");
  r_config_set_i (core->config, "emu.lazy", 1);
  r_core_cmd0 (core, "aae");
  r_config_set_i (core->config, "emu.lazy", emu_lazy);
 }
 r_print_rowlog_done (core->print, oldstr);
}
