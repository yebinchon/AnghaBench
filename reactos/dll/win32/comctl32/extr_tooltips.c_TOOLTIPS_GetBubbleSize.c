
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cy; int cx; } ;
struct TYPE_6__ {scalar_t__ cbSize; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef int TOOLTIPS_INFO ;
typedef TYPE_2__ SIZE ;
typedef int LRESULT ;
typedef int INT ;


 int FALSE ;
 int MAKELRESULT (int ,int ) ;
 int TOOLTIPS_CalcTipSize (int const*,TYPE_2__*) ;
 int TOOLTIPS_GetToolFromInfoT (int const*,TYPE_1__ const*) ;
 int TRACE (char*,int,...) ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;

__attribute__((used)) static LRESULT
TOOLTIPS_GetBubbleSize (const TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *lpToolInfo)
{
    INT nTool;
    SIZE size;

    if (lpToolInfo == ((void*)0))
 return FALSE;
    if (lpToolInfo->cbSize < TTTOOLINFOW_V1_SIZE)
 return FALSE;

    nTool = TOOLTIPS_GetToolFromInfoT (infoPtr, lpToolInfo);
    if (nTool == -1) return 0;

    TRACE("tool %d\n", nTool);

    TOOLTIPS_CalcTipSize (infoPtr, &size);
    TRACE("size %d x %d\n", size.cx, size.cy);

    return MAKELRESULT(size.cx, size.cy);
}
