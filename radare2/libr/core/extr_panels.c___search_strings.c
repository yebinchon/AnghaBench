
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 char* PANEL_TITLE_STRINGS_BIN ;
 char* PANEL_TITLE_STRINGS_DATA ;
 char* __search_db (int *,char const*) ;
 char* __show_status_input (int *,char*) ;
 int free (char*) ;
 char* r_str_newf (char*,char*,char const*) ;

char *__search_strings (RCore *core, bool whole) {
 const char *title = whole ? PANEL_TITLE_STRINGS_BIN : PANEL_TITLE_STRINGS_DATA;
 const char *str = __show_status_input (core, "Search Strings: ");
 char *db_val = __search_db (core, title);
 char *ret = r_str_newf ("%s~%s", db_val, str);
 free (db_val);
 return ret;
}
