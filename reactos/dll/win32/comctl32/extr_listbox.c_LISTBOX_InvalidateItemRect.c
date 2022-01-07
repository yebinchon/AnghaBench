
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int self; } ;
typedef int RECT ;
typedef TYPE_1__ LB_DESCR ;
typedef int INT ;


 int InvalidateRect (int ,int *,int ) ;
 int LISTBOX_GetItemRect (TYPE_1__*,int ,int *) ;
 int TRUE ;

__attribute__((used)) static void LISTBOX_InvalidateItemRect( LB_DESCR *descr, INT index )
{
    RECT rect;

    if (LISTBOX_GetItemRect( descr, index, &rect ) == 1)
        InvalidateRect( descr->self, &rect, TRUE );
}
