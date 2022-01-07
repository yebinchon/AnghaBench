
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPanel ;
typedef int RCore ;


 int PANEL_CMD_FUNCTION ;
 int PANEL_CMD_SYMBOLS ;
 int PANEL_TITLE_BREAKPOINTS ;
 int PANEL_TITLE_COMMENTS ;
 int PANEL_TITLE_DISASMSUMMARY ;
 int PANEL_TITLE_SECTIONS ;
 int PANEL_TITLE_SEGMENTS ;
 int PANEL_TITLE_STRINGS_BIN ;
 int PANEL_TITLE_STRINGS_DATA ;
 scalar_t__ __check_panel_type (int *,int ) ;
 scalar_t__ search_db_check_panel_type (int *,int *,int ) ;

bool __is_abnormal_cursor_type(RCore *core, RPanel *panel) {
 if (__check_panel_type (panel, PANEL_CMD_SYMBOLS) || __check_panel_type (panel, PANEL_CMD_FUNCTION)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_DISASMSUMMARY)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_STRINGS_DATA)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_STRINGS_BIN)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_BREAKPOINTS)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_SECTIONS)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_SEGMENTS)) {
  return 1;
 }
 if (search_db_check_panel_type (core, panel, PANEL_TITLE_COMMENTS)) {
  return 1;
 }
 return 0;
}
