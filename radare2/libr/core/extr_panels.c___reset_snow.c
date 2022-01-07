
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* view; } ;
struct TYPE_8__ {int * snows; } ;
struct TYPE_7__ {int refresh; } ;
typedef TYPE_2__ RPanels ;
typedef TYPE_3__ RPanel ;


 TYPE_3__* __get_cur_panel (TYPE_2__*) ;
 int r_list_free (int *) ;

void __reset_snow(RPanels *panels) {
 RPanel *cur = __get_cur_panel (panels);
 r_list_free (panels->snows);
 panels->snows = ((void*)0);
 cur->view->refresh = 1;
}
