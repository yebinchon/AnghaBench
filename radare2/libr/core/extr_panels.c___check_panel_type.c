
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {char* cmd; } ;
typedef TYPE_2__ RPanel ;


 int COUNT (int *) ;
 int PANEL_CMD_DECOMPILER ;
 int PANEL_CMD_DECOMPILER_O ;
 int PANEL_CMD_DISASMSUMMARY ;
 int PANEL_CMD_DISASSEMBLY ;
 int PANEL_CMD_HEXDUMP ;
 int PANEL_CMD_STACK ;
 scalar_t__ R_STR_ISEMPTY (char const*) ;
 int free (char*) ;
 int * hexdump_rotate ;
 char* r_str_new (char*) ;
 int r_str_split (char*,char) ;
 char* r_str_word_get0 (char*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

bool __check_panel_type(RPanel *panel, const char *type) {
 if (!panel->model->cmd || !type) {
  return 0;
 }
 char *tmp = r_str_new (panel->model->cmd);
 int n = r_str_split (tmp, ' ');
 if (!n) {
  free (tmp);
  return 0;
 }
 const char *base = r_str_word_get0 (tmp, 0);
 if (R_STR_ISEMPTY (base)) {
  free (tmp);
  return 0;
 }
 int len = strlen (type);
 if (!strcmp (type, PANEL_CMD_DISASSEMBLY)) {
  if (!strncmp (tmp, type, len) &&
    strcmp (panel->model->cmd, PANEL_CMD_DECOMPILER) &&
    strcmp (panel->model->cmd, PANEL_CMD_DECOMPILER_O) &&
    strcmp (panel->model->cmd, PANEL_CMD_DISASMSUMMARY)) {
   free (tmp);
   return 1;
  }
  free (tmp);
  return 0;
 }
 if (!strcmp (type, PANEL_CMD_STACK)) {
  if (!strcmp (tmp, PANEL_CMD_STACK)) {
   free (tmp);
   return 1;
  }
  free (tmp);
  return 0;
 }
 if (!strcmp (type, PANEL_CMD_HEXDUMP)) {
  int i = 0;
  for (; i < COUNT (hexdump_rotate); i++) {
   if (!strcmp (tmp, hexdump_rotate[i])) {
    free (tmp);
    return 1;
   }
  }
  free (tmp);
  return 0;
 }
 free (tmp);
 return !strncmp (panel->model->cmd, type, len);
}
