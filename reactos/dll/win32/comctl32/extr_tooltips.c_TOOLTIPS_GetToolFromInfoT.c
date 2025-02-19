
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {size_t uNumTools; TYPE_1__* tools; } ;
struct TYPE_7__ {scalar_t__ hwnd; scalar_t__ uId; } ;
struct TYPE_6__ {int uFlags; scalar_t__ hwnd; scalar_t__ uId; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef size_t INT ;


 int TTF_IDISHWND ;

__attribute__((used)) static INT
TOOLTIPS_GetToolFromInfoT (const TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *lpToolInfo)
{
    TTTOOL_INFO *toolPtr;
    UINT nTool;

    for (nTool = 0; nTool < infoPtr->uNumTools; nTool++) {
 toolPtr = &infoPtr->tools[nTool];

 if (!(toolPtr->uFlags & TTF_IDISHWND) &&
     (lpToolInfo->hwnd == toolPtr->hwnd) &&
     (lpToolInfo->uId == toolPtr->uId))
     return nTool;
    }

    for (nTool = 0; nTool < infoPtr->uNumTools; nTool++) {
 toolPtr = &infoPtr->tools[nTool];

 if ((toolPtr->uFlags & TTF_IDISHWND) &&
     (lpToolInfo->uId == toolPtr->uId))
     return nTool;
    }

    return -1;
}
