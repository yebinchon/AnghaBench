
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* panels; } ;
struct TYPE_13__ {TYPE_4__* panels_menu; } ;
struct TYPE_12__ {int depth; int n_refresh; TYPE_3__** history; TYPE_2__** refreshPanels; } ;
struct TYPE_11__ {TYPE_2__* p; } ;
struct TYPE_10__ {TYPE_1__* view; } ;
struct TYPE_9__ {int refresh; } ;
typedef TYPE_4__ RPanelsMenu ;
typedef TYPE_5__ RPanels ;
typedef TYPE_6__ RCore ;


 int __set_refresh_all (TYPE_6__*,int,int) ;

void __del_menu(RCore *core) {
 RPanels *panels = core->panels;
 RPanelsMenu *menu = panels->panels_menu;
 int i;
 menu->depth--;
 for (i = 1; i < menu->depth; i++) {
  menu->history[i]->p->view->refresh = 1;
  menu->refreshPanels[i - 1] = menu->history[i]->p;
 }
 menu->n_refresh = menu->depth - 1;
 __set_refresh_all (core, 0, 0);
}
