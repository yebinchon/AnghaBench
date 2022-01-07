
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dwStyle; int Self; int Buddy; } ;
typedef TYPE_1__ UPDOWN_INFO ;
struct TYPE_8__ {int right; int left; } ;
typedef TYPE_2__ RECT ;
typedef int POINT ;
typedef int HTHEME ;
typedef int HDC ;
typedef int BOOL ;


 int DrawThemeBackground (int ,int ,int ,int ,TYPE_2__*,int *) ;
 int FALSE ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int GetWindowTheme (int ) ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int TRUE ;
 int UDS_ALIGNLEFT ;
 int UDS_ALIGNRIGHT ;

__attribute__((used)) static BOOL UPDOWN_DrawBuddyBackground (const UPDOWN_INFO *infoPtr, HDC hdc)
{
    RECT br, r;
    HTHEME buddyTheme = GetWindowTheme (infoPtr->Buddy);
    if (!buddyTheme) return FALSE;

    GetWindowRect (infoPtr->Buddy, &br);
    MapWindowPoints (((void*)0), infoPtr->Self, (POINT*)&br, 2);
    GetClientRect (infoPtr->Self, &r);

    if (infoPtr->dwStyle & UDS_ALIGNLEFT)
        br.left = r.left;
    else if (infoPtr->dwStyle & UDS_ALIGNRIGHT)
        br.right = r.right;

    DrawThemeBackground (buddyTheme, hdc, 0, 0, &br, ((void*)0));
    return TRUE;
}
