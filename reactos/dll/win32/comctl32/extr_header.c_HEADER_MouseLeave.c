
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iHotItem; int hwndSelf; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_1__ HEADER_INFO ;
typedef int HDC ;


 int GetDC (int ) ;
 int HEADER_RefreshItem (TYPE_1__*,int) ;
 int ReleaseDC (int ,int ) ;

__attribute__((used)) static LRESULT
HEADER_MouseLeave (HEADER_INFO *infoPtr)
{

    INT oldHotItem = infoPtr->iHotItem;
    HDC hdc = GetDC (infoPtr->hwndSelf);

    infoPtr->iHotItem = -1;
    if (oldHotItem != -1) HEADER_RefreshItem (infoPtr, oldHotItem);
    ReleaseDC (infoPtr->hwndSelf, hdc);

    return 0;
}
