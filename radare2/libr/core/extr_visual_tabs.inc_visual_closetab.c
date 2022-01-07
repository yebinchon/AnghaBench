
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * tabs; int tab; } ;
struct TYPE_6__ {TYPE_1__ visual; } ;
typedef int RCoreVisualTab ;
typedef TYPE_2__ RCore ;


 int r_list_delete_data (int *,int *) ;
 int r_list_free (int *) ;
 int * r_list_get_n (int *,int ) ;
 int r_list_length (int *) ;
 int visual_tabset (TYPE_2__*,int *) ;

__attribute__((used)) static void visual_closetab (RCore *core) {
 if (!core->visual.tabs) {
  return;
 }
 RCoreVisualTab *tab = r_list_get_n (core->visual.tabs, core->visual.tab);
 if (tab) {
  r_list_delete_data (core->visual.tabs, tab);
  const int tabsCount = r_list_length (core->visual.tabs);
  if (tabsCount > 0) {
   if (core->visual.tab > 0) {
    core->visual.tab--;
   }
   RCoreVisualTab *tab = r_list_get_n (core->visual.tabs, core->visual.tab);
   if (tab) {
    visual_tabset(core, tab);
   }
  } else {
   r_list_free (core->visual.tabs);
   core->visual.tabs = ((void*)0);
  }
 }
}
