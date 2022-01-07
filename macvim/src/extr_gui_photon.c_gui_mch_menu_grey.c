
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ vimmenu_T ;


 int PtMenu ;
 int PtMenuButton ;
 int PtSetResource (int *,int ,long,long) ;
 long PtWidgetFlags (int *) ;
 scalar_t__ PtWidgetIsClass (int *,int ) ;
 int * PtWidgetParent (int *) ;
 int Pt_ARG_FLAGS ;
 long Pt_BLOCKED ;
 long Pt_FALSE ;
 long Pt_GHOST ;
 long Pt_HIGHLIGHTED ;
 long Pt_SELECTABLE ;
 long Pt_TRUE ;

void
gui_mch_menu_grey(vimmenu_T *menu, int grey)
{
    long flags, mask, fields;

    if (menu->id == ((void*)0))
 return;

    flags = PtWidgetFlags(menu->id);
    if (PtWidgetIsClass(menu->id, PtMenuButton) &&
     PtWidgetIsClass(PtWidgetParent(menu->id), PtMenu))
    {
 fields = Pt_FALSE;
 mask = Pt_SELECTABLE | Pt_HIGHLIGHTED;
    }
    else
    {
 fields = Pt_TRUE;
 mask = Pt_BLOCKED | Pt_GHOST;
    }

    if (! grey)
 fields = ~fields;

    PtSetResource(menu->id, Pt_ARG_FLAGS, fields,
     mask);
}
