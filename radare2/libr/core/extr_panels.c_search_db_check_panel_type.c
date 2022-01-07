
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPanel ;
typedef int RCore ;


 scalar_t__ __check_panel_type (int *,char*) ;
 char* __search_db (int *,char const*) ;
 int free (char*) ;

bool search_db_check_panel_type (RCore *core, RPanel *panel, const char *ch) {
 char *str = __search_db (core, ch);
 bool ret = str && __check_panel_type (panel, str);
 free (str);
 return ret;
}
