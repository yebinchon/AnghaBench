
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * panels; } ;
typedef int RPanels ;
typedef int RPanel ;
typedef TYPE_1__ RCore ;


 int __dismantle_panel (int *,int *) ;
 int __move_panel_to_down (TYPE_1__*,int *,int) ;
 int __move_panel_to_left (TYPE_1__*,int *,int) ;
 int __move_panel_to_right (TYPE_1__*,int *,int) ;
 int __move_panel_to_up (TYPE_1__*,int *,int) ;
 int __set_refresh_all (TYPE_1__*,int,int) ;
 int __show_status (TYPE_1__*,char*) ;
 int r_cons_arrow_to_hjkl (int) ;

void __move_panel_to_dir(RCore *core, RPanel *panel, int src) {
 RPanels *panels = core->panels;
 __dismantle_panel (panels, panel);
 int key = __show_status (core, "Move the current panel to direction (h/l): ");
 key = r_cons_arrow_to_hjkl (key);
 __set_refresh_all (core, 0, 1);
 switch (key) {
 case 'h':
  __move_panel_to_left (core, panel, src);
  break;
 case 'l':
  __move_panel_to_right (core, panel, src);
  break;
 case 'k':
  __move_panel_to_up (core, panel, src);
  break;
 case 'j':
  __move_panel_to_down (core, panel, src);
  break;
 default:
  break;
 }
}
