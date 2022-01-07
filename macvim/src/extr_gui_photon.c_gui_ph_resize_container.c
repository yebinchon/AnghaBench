
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vimContainer; int vimWindow; } ;
struct TYPE_5__ {int pos; } ;
typedef TYPE_1__ PhArea_t ;


 int PtSetResource (int ,int ,TYPE_1__*,int ) ;
 int PtWidgetArea (int ,TYPE_1__*) ;
 int PtWidgetPos (int ,int *) ;
 int Pt_ARG_AREA ;
 TYPE_2__ gui ;

__attribute__((used)) static void
gui_ph_resize_container(void)
{
    PhArea_t area;

    PtWidgetArea(gui.vimWindow, &area);
    PtWidgetPos (gui.vimContainer, &area.pos);

    PtSetResource(gui.vimContainer, Pt_ARG_AREA, &area, 0);
}
