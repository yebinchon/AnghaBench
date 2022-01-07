
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int h; int w; scalar_t__ y; int x; } ;
struct TYPE_17__ {TYPE_2__* panels; } ;
struct TYPE_16__ {TYPE_1__* view; } ;
struct TYPE_15__ {scalar_t__ curnode; } ;
struct TYPE_14__ {TYPE_8__ pos; scalar_t__ curpos; } ;
typedef TYPE_2__ RPanels ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 int __check_panel_num (TYPE_4__*) ;
 int __fix_layout (TYPE_4__*) ;
 TYPE_3__* __get_panel (TYPE_2__*,scalar_t__) ;
 int __insert_panel (TYPE_4__*,scalar_t__,char const*,char const*) ;
 int __set_geometry (TYPE_8__*,int ,scalar_t__,int ,int) ;
 int __set_refresh_all (TYPE_4__*,int,int) ;

void __split_panel_horizontal(RCore *core, RPanel *p, const char *name, const char *cmd) {
 RPanels *panels = core->panels;
 if (!__check_panel_num (core)) {
  return;
 }
 __insert_panel (core, panels->curnode + 1, name, cmd);
 RPanel *next = __get_panel (panels, panels->curnode + 1);
 int oheight = p->view->pos.h;
 p->view->curpos = 0;
 p->view->pos.h = oheight / 2 + 1;
 __set_geometry (&next->view->pos, p->view->pos.x, p->view->pos.y + p->view->pos.h - 1,
   p->view->pos.w, oheight - p->view->pos.h + 1);
 __fix_layout (core);
 __set_refresh_all (core, 0, 1);
}
