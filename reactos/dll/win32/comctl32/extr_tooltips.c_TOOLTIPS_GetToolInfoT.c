
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ uNumTools; } ;
struct TYPE_9__ {scalar_t__ cbSize; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int TOOLTIPS_CopyInfoT (TYPE_2__ const*,int,TYPE_1__*,int ) ;
 int TOOLTIPS_GetToolFromInfoT (TYPE_2__ const*,TYPE_1__*) ;
 int TRACE (char*,int) ;
 int TRUE ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;

__attribute__((used)) static LRESULT
TOOLTIPS_GetToolInfoT (const TOOLTIPS_INFO *infoPtr, TTTOOLINFOW *ti, BOOL isW)
{
    INT nTool;
    HWND hwnd;

    if (!ti) return FALSE;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
 return FALSE;
    if (infoPtr->uNumTools == 0)
 return FALSE;

    nTool = TOOLTIPS_GetToolFromInfoT (infoPtr, ti);
    if (nTool == -1)
 return FALSE;

    TRACE("tool %d\n", nTool);

    hwnd = ti->hwnd;
    TOOLTIPS_CopyInfoT (infoPtr, nTool, ti, isW);
    ti->hwnd = hwnd;

    return TRUE;
}
