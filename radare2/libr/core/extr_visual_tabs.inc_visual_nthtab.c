
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tab; int tabs; } ;
struct TYPE_6__ {TYPE_1__ visual; } ;
typedef int RCoreVisualTab ;
typedef TYPE_2__ RCore ;


 int * r_list_get_n (int ,int) ;
 int r_list_length (int ) ;
 int visual_tabset (TYPE_2__*,int *) ;

__attribute__((used)) static void visual_nthtab (RCore *core, int n) {
 if (!core->visual.tabs || n < 0 || n >= r_list_length (core->visual.tabs)) {
  return;
 }
 core->visual.tab = n;
 RCoreVisualTab *tab = r_list_get_n (core->visual.tabs, core->visual.tab);
 if (tab) {
  visual_tabset (core, tab);
 }
}
