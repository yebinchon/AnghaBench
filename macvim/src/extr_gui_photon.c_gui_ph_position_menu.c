
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priority; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int PtWidget_t ;


 int PtGetResource (int *,int ,TYPE_1__**,int ) ;
 int * PtWidgetBrotherInFront (int *) ;
 int * PtWidgetChildBack (int ) ;
 int PtWidgetInsert (int *,int *,int) ;
 int PtWidgetParent (int *) ;
 int Pt_ARG_POINTER ;

__attribute__((used)) static void
gui_ph_position_menu(PtWidget_t *widget, int priority)
{
    PtWidget_t *traverse;
    vimmenu_T *menu;

    traverse = PtWidgetChildBack(PtWidgetParent(widget));




    while (traverse != ((void*)0))
    {
 PtGetResource(traverse, Pt_ARG_POINTER, &menu, 0);

 if (menu != ((void*)0) &&
  priority < menu->priority &&
  widget != traverse)
 {

     PtWidgetInsert(widget, traverse, 1);
     return;
 }

 traverse = PtWidgetBrotherInFront(traverse);
    }
}
