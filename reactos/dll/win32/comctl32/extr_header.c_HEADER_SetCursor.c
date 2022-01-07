
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int hcurArrow; int hcurDivopen; int hcurDivider; int hwndSelf; } ;
typedef int POINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int INT ;
typedef TYPE_1__ HEADER_INFO ;


 int GetCursorPos (int *) ;
 int HEADER_InternalHitTest (TYPE_1__*,int *,scalar_t__*,int *) ;
 scalar_t__ HHT_ONDIVIDER ;
 scalar_t__ HHT_ONDIVOPEN ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int ScreenToClient (int ,int *) ;
 int SetCursor (int ) ;
 int TRACE (char*,int ,int ) ;

__attribute__((used)) static LRESULT
HEADER_SetCursor (HEADER_INFO *infoPtr, LPARAM lParam)
{
    POINT pt;
    UINT flags;
    INT nItem;

    TRACE("code=0x%X  id=0x%X\n", LOWORD(lParam), HIWORD(lParam));

    GetCursorPos (&pt);
    ScreenToClient (infoPtr->hwndSelf, &pt);

    HEADER_InternalHitTest (infoPtr, &pt, &flags, &nItem);

    if (flags == HHT_ONDIVIDER)
        SetCursor (infoPtr->hcurDivider);
    else if (flags == HHT_ONDIVOPEN)
        SetCursor (infoPtr->hcurDivopen);
    else
        SetCursor (infoPtr->hcurArrow);

    return 0;
}
