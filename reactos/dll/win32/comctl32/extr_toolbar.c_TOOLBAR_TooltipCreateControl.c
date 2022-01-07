
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hdr; scalar_t__ hwndToolTips; } ;
struct TYPE_7__ {int nNumButtons; int * buttons; scalar_t__ hwndToolTip; int hwndSelf; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ NMTOOLTIPSCREATED ;


 int CW_USEDEFAULT ;
 scalar_t__ CreateWindowExW (int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int NM_TOOLTIPSCREATED ;
 int TOOLBAR_SendNotify (int *,TYPE_1__*,int ) ;
 int TOOLBAR_TooltipAddTool (TYPE_1__*,int *) ;
 int TOOLBAR_TooltipSetRect (TYPE_1__*,int *) ;
 int TOOLTIPS_CLASSW ;
 int WS_POPUP ;

__attribute__((used)) static void
TOOLBAR_TooltipCreateControl(TOOLBAR_INFO *infoPtr)
{
    int i;
    NMTOOLTIPSCREATED nmttc;

    infoPtr->hwndToolTip = CreateWindowExW(0, TOOLTIPS_CLASSW, ((void*)0), WS_POPUP,
            CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
            infoPtr->hwndSelf, 0, 0, 0);

    if (!infoPtr->hwndToolTip)
        return;


    nmttc.hwndToolTips = infoPtr->hwndToolTip;
    TOOLBAR_SendNotify(&nmttc.hdr, infoPtr, NM_TOOLTIPSCREATED);

    for (i = 0; i < infoPtr->nNumButtons; i++)
    {
        TOOLBAR_TooltipAddTool(infoPtr, &infoPtr->buttons[i]);
        TOOLBAR_TooltipSetRect(infoPtr, &infoPtr->buttons[i]);
    }
}
