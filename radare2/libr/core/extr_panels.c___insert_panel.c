
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* panels; } ;
struct TYPE_5__ {int n_panels; int ** panel; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 int PANEL_NUM_LIMIT ;
 int __init_panel_param (TYPE_2__*,int *,char const*,char const*) ;

void __insert_panel(RCore *core, int n, const char *name, const char *cmd) {
 RPanels *panels = core->panels;
 if (panels->n_panels + 1 > PANEL_NUM_LIMIT) {
  return;
 }
 RPanel **panel = panels->panel;
 int i;
 RPanel *last = panel[panels->n_panels];
 for (i = panels->n_panels - 1; i >= n; i--) {
  panel[i + 1] = panel[i];
 }
 panel[n] = last;
 __init_panel_param (core, panel[n], name, cmd);
}
