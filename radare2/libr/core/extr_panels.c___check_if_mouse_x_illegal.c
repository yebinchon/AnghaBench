
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int const w; } ;
struct TYPE_6__ {TYPE_1__* panels; } ;
struct TYPE_5__ {TYPE_3__* can; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConsCanvas ;



bool __check_if_mouse_x_illegal(RCore *core, int x) {
 RPanels *panels = core->panels;
 RConsCanvas *can = panels->can;
 const int edge_x = 1;
 if (x <= edge_x || can->w - edge_x <= x) {
  return 1;
 }
 return 0;
}
