
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tab; int tabs; } ;
struct TYPE_7__ {TYPE_1__ visual; } ;
typedef int RListFree ;
typedef int RCoreVisualTab ;
typedef TYPE_2__ RCore ;


 scalar_t__ r_core_visual_tab_free ;
 int * r_core_visual_tab_new (TYPE_2__*) ;
 int r_list_append (int ,int *) ;
 int r_list_newf (int ) ;
 int visual_tabset (TYPE_2__*,int *) ;

__attribute__((used)) static RCoreVisualTab *visual_newtab (RCore *core) {
 if (!core->visual.tabs) {
  core->visual.tabs = r_list_newf ((RListFree)r_core_visual_tab_free);
  if (!core->visual.tabs) {
   return ((void*)0);
  }
  core->visual.tab = -1;
  visual_newtab (core);
 }
 core->visual.tab++;
 RCoreVisualTab *tab = r_core_visual_tab_new (core);
 if (tab) {
  r_list_append (core->visual.tabs, tab);
  visual_tabset (core, tab);
 }
 return tab;
}
