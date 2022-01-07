
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int dwStyle; int hcurArrow; int hcurHorz; int hcurVert; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int POINT ;
typedef int LRESULT ;
typedef int LPARAM ;


 int CCS_VERT ;
 int GetCursorPos (int *) ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 scalar_t__ RBHT_CLIENT ;
 scalar_t__ RBHT_GRABBER ;
 int RBS_VERTICALGRIPPER ;
 int REBAR_InternalHitTest (TYPE_1__ const*,int *,scalar_t__*,int *) ;
 int ScreenToClient (int ,int *) ;
 int SetCursor (int ) ;
 int TRACE (char*,int ,int ) ;

__attribute__((used)) static LRESULT
REBAR_SetCursor (const REBAR_INFO *infoPtr, LPARAM lParam)
{
    POINT pt;
    UINT flags;

    TRACE("code=0x%X  id=0x%X\n", LOWORD(lParam), HIWORD(lParam));

    GetCursorPos (&pt);
    ScreenToClient (infoPtr->hwndSelf, &pt);

    REBAR_InternalHitTest (infoPtr, &pt, &flags, ((void*)0));

    if (flags == RBHT_GRABBER) {
 if ((infoPtr->dwStyle & CCS_VERT) &&
     !(infoPtr->dwStyle & RBS_VERTICALGRIPPER))
     SetCursor (infoPtr->hcurVert);
 else
     SetCursor (infoPtr->hcurHorz);
    }
    else if (flags != RBHT_CLIENT)
 SetCursor (infoPtr->hcurArrow);

    return 0;
}
