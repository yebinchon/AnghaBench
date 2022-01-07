
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_6__ {scalar_t__ height; int Self; int Notify; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ RECT ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int CCS_NORESIZE ;
 int FALSE ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetWindowLongW (int ,int ) ;
 int MoveWindow (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ SIZE_MAXIMIZED ;
 scalar_t__ SIZE_RESTORED ;
 int STATUSBAR_SetPartBounds (TYPE_1__*) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 int WARN (char*) ;

__attribute__((used)) static BOOL
STATUSBAR_WMSize (STATUS_INFO *infoPtr, WORD flags)
{
    INT width, x, y;
    RECT parent_rect;


    TRACE("flags %04x\n", flags);

    if (flags != SIZE_RESTORED && flags != SIZE_MAXIMIZED) {
 WARN("flags MUST be SIZE_RESTORED or SIZE_MAXIMIZED\n");
 return FALSE;
    }

    if (GetWindowLongW(infoPtr->Self, GWL_STYLE) & CCS_NORESIZE) return FALSE;


    if (!GetClientRect (infoPtr->Notify, &parent_rect))
        return FALSE;

    width = parent_rect.right - parent_rect.left;
    x = parent_rect.left;
    y = parent_rect.bottom - infoPtr->height;
    MoveWindow (infoPtr->Self, x, y, width, infoPtr->height, TRUE);
    STATUSBAR_SetPartBounds (infoPtr);
    return TRUE;
}
