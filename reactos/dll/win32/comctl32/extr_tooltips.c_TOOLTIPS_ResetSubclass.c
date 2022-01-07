
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uInternalFlags; int hwnd; scalar_t__ uId; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef int HWND ;


 int SetWindowSubclass (int ,int ,int,int ) ;
 int TOOLTIPS_SubclassProc ;
 int TTF_IDISHWND ;
 int TTF_SUBCLASS ;

__attribute__((used)) static void TOOLTIPS_ResetSubclass (const TTTOOL_INFO *toolPtr)
{

    if (toolPtr->uInternalFlags & TTF_SUBCLASS)
        SetWindowSubclass(toolPtr->uInternalFlags & TTF_IDISHWND ? (HWND)toolPtr->uId : toolPtr->hwnd,
            TOOLTIPS_SubclassProc, 1, 0);
}
