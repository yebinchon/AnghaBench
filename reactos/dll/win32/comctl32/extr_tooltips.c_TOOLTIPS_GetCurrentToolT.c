
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nCurrentTool; } ;
struct TYPE_7__ {scalar_t__ cbSize; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int BOOL ;


 int FALSE ;
 int TOOLTIPS_CopyInfoT (TYPE_2__ const*,int,TYPE_1__*,int ) ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;

__attribute__((used)) static LRESULT
TOOLTIPS_GetCurrentToolT (const TOOLTIPS_INFO *infoPtr, TTTOOLINFOW *ti, BOOL isW)
{
    if (ti) {
        if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
            return FALSE;

        if (infoPtr->nCurrentTool != -1)
            TOOLTIPS_CopyInfoT (infoPtr, infoPtr->nCurrentTool, ti, isW);
    }

    return infoPtr->nCurrentTool != -1;
}
