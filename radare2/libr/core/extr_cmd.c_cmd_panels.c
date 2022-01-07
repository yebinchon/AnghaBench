
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int panels_root; int config; scalar_t__ panels; scalar_t__ vmode; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*,...) ;
 int free (char*) ;
 int r_config_set (int ,char*,char const*) ;
 char* r_core_editor (TYPE_1__*,char*,int *) ;
 int r_core_visual_panels_root (TYPE_1__*,int ) ;
 int r_load_panels_layout (TYPE_1__*,char const*) ;
 int r_save_panels_layout (TYPE_1__*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int cmd_panels(void *data, const char *input) {
 RCore *core = (RCore*) data;
 if (core->vmode) {
  return 0;
 }
 if (*input == '?') {
  eprintf ("Usage: v[*i]\n");
  eprintf ("v.test    # save current layout with name test\n");
  eprintf ("v test    # load saved layout with name test\n");
  eprintf ("vi ...    # launch 'cfg.editor'\n");
  return 0;
 }
 if (*input == ' ') {
  if (core->panels) {
   r_load_panels_layout (core, input + 1);
  }
  r_config_set (core->config, "scr.layout", input + 1);
  return 1;
 }
 if (*input == '=') {
  r_save_panels_layout (core, input + 1);
  r_config_set (core->config, "scr.layout", input + 1);
  return 1;
 }
 if (*input == 'i') {
  char *sp = strchr (input, ' ');
  if (sp) {
   char *r = r_core_editor (core, sp + 1, ((void*)0));
   if (r) {
    free (r);
   } else {
    eprintf ("Cannot open file (%s)\n", sp + 1);
   }
  }

  return 0;
 }
 r_core_visual_panels_root (core, core->panels_root);
 return 1;
}
