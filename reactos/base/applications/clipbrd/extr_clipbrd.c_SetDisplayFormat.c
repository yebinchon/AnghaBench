
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int hMainWnd; scalar_t__ uDisplayFormat; scalar_t__ uCheckedItem; int hMenu; } ;
struct TYPE_7__ {scalar_t__ iWheelCarryoverY; scalar_t__ iWheelCarryoverX; scalar_t__ CurrentY; scalar_t__ CurrentX; } ;
struct TYPE_6__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;


 scalar_t__ CMD_AUTOMATIC ;
 int CheckMenuItem (int ,scalar_t__,int) ;
 scalar_t__ GetAutomaticClipboardFormat () ;
 int GetClipboardDataDimensions (scalar_t__,TYPE_1__*) ;
 TYPE_4__ Globals ;
 int InvalidateRect (int ,int *,int ) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;
 TYPE_2__ Scrollstate ;
 int TRUE ;
 int UpdateWindowScrollState (int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void SetDisplayFormat(UINT uFormat)
{
    RECT rc;

    CheckMenuItem(Globals.hMenu, Globals.uCheckedItem, MF_BYCOMMAND | MF_UNCHECKED);
    Globals.uCheckedItem = uFormat + CMD_AUTOMATIC;
    CheckMenuItem(Globals.hMenu, Globals.uCheckedItem, MF_BYCOMMAND | MF_CHECKED);

    if (uFormat == 0)
    {
        Globals.uDisplayFormat = GetAutomaticClipboardFormat();
    }
    else
    {
        Globals.uDisplayFormat = uFormat;
    }

    GetClipboardDataDimensions(Globals.uDisplayFormat, &rc);
    Scrollstate.CurrentX = Scrollstate.CurrentY = 0;
    Scrollstate.iWheelCarryoverX = Scrollstate.iWheelCarryoverY = 0;
    UpdateWindowScrollState(Globals.hMainWnd, rc.right, rc.bottom, &Scrollstate);

    InvalidateRect(Globals.hMainWnd, ((void*)0), TRUE);
}
