
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; } ;
struct TYPE_10__ {int lopnColor; int member_2; TYPE_1__ member_1; int member_0; } ;
struct TYPE_9__ {int dwStyle; unsigned int uNumTics; int lSelMax; int lSelMin; int lRangeMax; int lRangeMin; int * tics; int hwndSelf; } ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef TYPE_3__ LOGPEN ;
typedef scalar_t__ HTHEME ;
typedef scalar_t__ HPEN ;
typedef int HDC ;


 int COLOR_3DDKSHADOW ;
 scalar_t__ CreatePenIndirect (TYPE_3__*) ;
 int DeleteObject (scalar_t__) ;
 int GetSysColor (int ) ;
 int GetThemeColor (scalar_t__,int,int ,int ,int *) ;
 scalar_t__ GetWindowTheme (int ) ;
 int PS_SOLID ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int TBS_ENABLESELRANGE ;
 int TBS_VERT ;
 int TIC_EDGE ;
 int TIC_SELECTIONMARKMAX ;
 int TIC_SELECTIONMARKMIN ;
 int TKP_TICS ;
 int TKP_TICSVERT ;
 int TMT_COLOR ;
 int TRACKBAR_DrawTic (TYPE_2__ const*,int ,int ,int) ;
 scalar_t__ TRACKBAR_HasSelection (TYPE_2__ const*) ;
 int TSS_NORMAL ;

__attribute__((used)) static void
TRACKBAR_DrawTics (const TRACKBAR_INFO *infoPtr, HDC hdc)
{
    unsigned int i;
    int ticFlags = infoPtr->dwStyle & 0x0f;
    LOGPEN ticPen = { PS_SOLID, {1, 0}, GetSysColor (COLOR_3DDKSHADOW) };
    HPEN hOldPen, hTicPen;
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);

    if (theme)
    {
        int part = (infoPtr->dwStyle & TBS_VERT) ? TKP_TICSVERT : TKP_TICS;
        GetThemeColor (theme, part, TSS_NORMAL, TMT_COLOR, &ticPen.lopnColor);
    }

    hTicPen = CreatePenIndirect(&ticPen);
    hOldPen = hTicPen ? SelectObject(hdc, hTicPen) : 0;


    for (i=0; i<infoPtr->uNumTics; i++)
        TRACKBAR_DrawTic (infoPtr, hdc, infoPtr->tics[i], ticFlags);

    TRACKBAR_DrawTic (infoPtr, hdc, infoPtr->lRangeMin, ticFlags | TIC_EDGE);
    TRACKBAR_DrawTic (infoPtr, hdc, infoPtr->lRangeMax, ticFlags | TIC_EDGE);

    if ((infoPtr->dwStyle & TBS_ENABLESELRANGE) && TRACKBAR_HasSelection(infoPtr)) {
        TRACKBAR_DrawTic (infoPtr, hdc, infoPtr->lSelMin,
                          ticFlags | TIC_SELECTIONMARKMIN);
        TRACKBAR_DrawTic (infoPtr, hdc, infoPtr->lSelMax,
                          ticFlags | TIC_SELECTIONMARKMAX);
    }


    if (hTicPen) {
 SelectObject(hdc, hOldPen);
 DeleteObject(hTicPen);
    }
}
