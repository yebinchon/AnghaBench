
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int style; int self; int width; int height; } ;
struct TYPE_7__ {scalar_t__ top; int right; int left; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ LB_DESCR ;
typedef int INT ;


 int InvalidateRect (int ,TYPE_1__*,int ) ;
 int LBS_DISPLAYCHANGED ;
 int LBS_MULTICOLUMN ;
 int LBS_NOREDRAW ;
 int LISTBOX_GetItemRect (TYPE_2__*,int ,TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static void LISTBOX_InvalidateItems( LB_DESCR *descr, INT index )
{
    RECT rect;

    if (LISTBOX_GetItemRect( descr, index, &rect ) == 1)
    {
        if (descr->style & LBS_NOREDRAW)
        {
            descr->style |= LBS_DISPLAYCHANGED;
            return;
        }
        rect.bottom = descr->height;
        InvalidateRect( descr->self, &rect, TRUE );
        if (descr->style & LBS_MULTICOLUMN)
        {

            rect.left = rect.right;
            rect.right = descr->width;
            rect.top = 0;
            InvalidateRect( descr->self, &rect, TRUE );
        }
    }
}
