
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ w; scalar_t__ h; } ;
struct TYPE_26__ {TYPE_6__* cons; } ;
struct TYPE_25__ {TYPE_3__* view; TYPE_1__* model; } ;
struct TYPE_24__ {TYPE_5__* context; } ;
struct TYPE_22__ {int graph_box; int graph_box2; } ;
struct TYPE_23__ {TYPE_4__ pal; } ;
struct TYPE_20__ {scalar_t__ x; scalar_t__ y; int h; int w; } ;
struct TYPE_21__ {int refresh; TYPE_2__ pos; int sy; int sx; } ;
struct TYPE_19__ {scalar_t__ type; } ;
typedef TYPE_7__ RPanel ;
typedef TYPE_8__ RCore ;
typedef TYPE_9__ RConsCanvas ;


 scalar_t__ PANEL_TYPE_MENU ;
 int __default_panel_print (TYPE_8__*,TYPE_7__*) ;
 int __menu_panel_print (TYPE_9__*,TYPE_7__*,int ,int ,int ,int ) ;
 int r_cons_canvas_box (TYPE_9__*,scalar_t__,scalar_t__,int ,int ,int ) ;
 int r_cons_canvas_fill (TYPE_9__*,scalar_t__,scalar_t__,int ,int ,char) ;

void __panel_print(RCore *core, RConsCanvas *can, RPanel *panel, int color) {
 if (!can || !panel|| !panel->view->refresh) {
  return;
 }

 if (can->w <= panel->view->pos.x || can->h <= panel->view->pos.y) {
  return;
 }
 panel->view->refresh = 0;
 r_cons_canvas_fill (can, panel->view->pos.x, panel->view->pos.y, panel->view->pos.w, panel->view->pos.h, ' ');
 if (panel->model->type == PANEL_TYPE_MENU) {
  __menu_panel_print (can, panel, panel->view->sx, panel->view->sy, panel->view->pos.w, panel->view->pos.h);
 } else {
  __default_panel_print (core, panel);
 }
 if (color) {
  r_cons_canvas_box (can, panel->view->pos.x, panel->view->pos.y, panel->view->pos.w, panel->view->pos.h, core->cons->context->pal.graph_box2);
 } else {
  r_cons_canvas_box (can, panel->view->pos.x, panel->view->pos.y, panel->view->pos.w, panel->view->pos.h, core->cons->context->pal.graph_box);
 }
}
