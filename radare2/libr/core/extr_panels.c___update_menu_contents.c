
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* view; TYPE_2__* model; } ;
struct TYPE_14__ {int n_refresh; TYPE_6__** refreshPanels; } ;
struct TYPE_13__ {TYPE_6__* p; } ;
struct TYPE_10__ {int h; int w; } ;
struct TYPE_12__ {int refresh; TYPE_1__ pos; } ;
struct TYPE_11__ {int type; int title; } ;
typedef int RStrBuf ;
typedef TYPE_4__ RPanelsMenuItem ;
typedef TYPE_5__ RPanelsMenu ;
typedef TYPE_6__ RPanel ;
typedef int RCore ;


 int PANEL_TYPE_MENU ;
 int * __draw_menu (int *,TYPE_4__*) ;
 int __set_refresh_all (int *,int,int) ;
 int free (int ) ;
 int r_str_bounds (int ,int*) ;
 int r_strbuf_drain (int *) ;

void __update_menu_contents(RCore *core, RPanelsMenu *menu, RPanelsMenuItem *parent) {
 RPanel *p = parent->p;
 RStrBuf *buf = __draw_menu (core, parent);
 if (!buf) {
  return;
 }
 free (p->model->title);
 p->model->title = r_strbuf_drain (buf);
 int new_w = r_str_bounds (p->model->title, &p->view->pos.h);
 if (new_w < p->view->pos.w) {
  __set_refresh_all (core, 0, 0);
 }
 p->view->pos.w = new_w;
 p->view->pos.h += 4;
 p->model->type = PANEL_TYPE_MENU;
 p->view->refresh = 1;
 menu->refreshPanels[menu->n_refresh++] = p;
}
