
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cbSize; } ;
struct TYPE_4__ {TYPE_3__ ti; int pt; int hwnd; } ;
typedef int TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef TYPE_1__* LPTTHITTESTINFOW ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TOOLTIPS_CopyInfoT (int const*,int,TYPE_3__*,int ) ;
 int TOOLTIPS_GetToolFromPoint (int const*,int ,int *) ;
 int TRACE (char*,int) ;
 int TRUE ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;

__attribute__((used)) static LRESULT
TOOLTIPS_HitTestT (const TOOLTIPS_INFO *infoPtr, LPTTHITTESTINFOW lptthit,
                   BOOL isW)
{
    INT nTool;

    if (lptthit == 0)
 return FALSE;

    nTool = TOOLTIPS_GetToolFromPoint (infoPtr, lptthit->hwnd, &lptthit->pt);
    if (nTool == -1)
 return FALSE;

    TRACE("tool %d\n", nTool);


    if (lptthit->ti.cbSize >= TTTOOLINFOW_V1_SIZE)
        TOOLTIPS_CopyInfoT (infoPtr, nTool, &lptthit->ti, isW);

    return TRUE;
}
