
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int const h; } ;
struct TYPE_6__ {TYPE_1__* panels; } ;
struct TYPE_5__ {TYPE_3__* can; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConsCanvas ;



bool __check_if_mouse_y_illegal(RCore *core, int y) {
 RPanels *panels = core->panels;
 RConsCanvas *can = panels->can;
 const int edge_y = 0;
 if (y <= edge_y || can->h - edge_y <= y) {
  return 1;
 }
 return 0;
}
