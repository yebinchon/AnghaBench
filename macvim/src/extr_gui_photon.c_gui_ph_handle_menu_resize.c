
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* int_u ;
struct TYPE_12__ {int * vimContainer; int * vimPanelGroup; void* toolbar_height; void* menu_height; scalar_t__ menu_is_active; } ;
struct TYPE_11__ {void* y; scalar_t__ x; } ;
struct TYPE_10__ {TYPE_2__* cbdata; } ;
struct TYPE_8__ {void* h; } ;
struct TYPE_9__ {TYPE_1__ new_dim; } ;
typedef int PtWidget_t ;
typedef TYPE_2__ PtContainerCallback_t ;
typedef TYPE_3__ PtCallbackInfo_t ;
typedef TYPE_4__ PhPoint_t ;


 int PtSetResource (int *,int ,TYPE_4__*,int ) ;
 int Pt_ARG_POS ;
 int Pt_CONTINUE ;
 TYPE_6__ gui ;
 int gui_ph_get_panelgroup_margins (int *,int *,int *,int *) ;
 int gui_ph_resize_container () ;
 int pg_margin_bottom ;
 int pg_margin_left ;
 int pg_margin_right ;
 int pg_margin_top ;

__attribute__((used)) static int
gui_ph_handle_menu_resize(
 PtWidget_t *widget,
 void *other,
 PtCallbackInfo_t *info)
{
    PtContainerCallback_t *sizes = info->cbdata;
    PtWidget_t *container;
    PhPoint_t below_menu;
    int_u height;

    height = sizes->new_dim.h;




    if (gui.menu_is_active)
    {
 gui.menu_height = height;
 gui.toolbar_height = 0;
    }





    below_menu.x = 0;
    below_menu.y = height;




    container = gui.vimContainer;


    PtSetResource(container, Pt_ARG_POS, &below_menu, 0);

    gui_ph_resize_container();






    return Pt_CONTINUE;
}
