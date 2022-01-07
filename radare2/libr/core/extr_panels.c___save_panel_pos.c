
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* view; } ;
struct TYPE_5__ {int h; int w; int y; int x; } ;
struct TYPE_6__ {TYPE_1__ pos; int prevPos; } ;
typedef TYPE_3__ RPanel ;


 int __set_geometry (int *,int ,int ,int ,int ) ;

void __save_panel_pos(RPanel* panel) {
 __set_geometry (&panel->view->prevPos, panel->view->pos.x, panel->view->pos.y,
   panel->view->pos.w, panel->view->pos.h);
}
