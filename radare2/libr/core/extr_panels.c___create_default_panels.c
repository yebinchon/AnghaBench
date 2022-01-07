
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* panels; } ;
struct TYPE_8__ {scalar_t__ layout; scalar_t__ n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 scalar_t__ PANEL_LAYOUT_DEFAULT_DYNAMIC ;
 int * __get_panel (TYPE_1__*,scalar_t__) ;
 int __init_panel_param (TYPE_2__*,int *,char const*,char*) ;
 char* __search_db (TYPE_2__*,char const*) ;
 int __set_curnode (TYPE_2__*,int ) ;
 int free (char*) ;
 char** panels_dynamic ;
 char** panels_static ;

void __create_default_panels(RCore *core) {
 RPanels *panels = core->panels;
 panels->n_panels = 0;
 __set_curnode (core, 0);
 const char **panels_list = panels_static;
 if (panels->layout == PANEL_LAYOUT_DEFAULT_DYNAMIC) {
  panels_list = panels_dynamic;
 }

 int i = 0;
 while (panels_list[i]) {
  RPanel *p = __get_panel (panels, panels->n_panels);
  if (!p) {
   return;
  }
  const char *s = panels_list[i++];
  char *db_val = __search_db (core, s);
  __init_panel_param (core, p, s, db_val);
  free (db_val);
 }
}
