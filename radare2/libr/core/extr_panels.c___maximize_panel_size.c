
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* view; } ;
struct TYPE_10__ {TYPE_1__* can; } ;
struct TYPE_9__ {int refresh; int pos; } ;
struct TYPE_8__ {scalar_t__ h; int w; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;


 TYPE_4__* __get_cur_panel (TYPE_3__*) ;
 int __set_geometry (int *,int ,int,int ,scalar_t__) ;

void __maximize_panel_size(RPanels *panels) {
 RPanel *cur = __get_cur_panel (panels);
 __set_geometry (&cur->view->pos, 0, 1, panels->can->w, panels->can->h - 1);
 cur->view->refresh = 1;
}
