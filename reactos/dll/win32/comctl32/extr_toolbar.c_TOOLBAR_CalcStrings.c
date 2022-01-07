
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_13__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_12__ {scalar_t__ tmHeight; } ;
struct TYPE_11__ {scalar_t__ nMaxTextRows; scalar_t__ nNumButtons; scalar_t__ nNumStrings; int hwndSelf; int * buttons; int hFont; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TEXTMETRICW ;
typedef int TBUTTON_INFO ;
typedef TYPE_3__ SIZE ;
typedef TYPE_4__* LPSIZE ;
typedef scalar_t__ INT ;
typedef int HFONT ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetTextMetricsW (int ,TYPE_2__*) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 scalar_t__ TOOLBAR_GetText (TYPE_1__ const*,int *) ;
 int TOOLBAR_MeasureString (TYPE_1__ const*,int *,int ,TYPE_3__*) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
TOOLBAR_CalcStrings (const TOOLBAR_INFO *infoPtr, LPSIZE lpSize)
{
    TBUTTON_INFO *btnPtr;
    INT i;
    SIZE sz;
    HDC hdc;
    HFONT hOldFont;

    lpSize->cx = 0;
    lpSize->cy = 0;

    if (infoPtr->nMaxTextRows == 0)
        return;

    hdc = GetDC (infoPtr->hwndSelf);
    hOldFont = SelectObject (hdc, infoPtr->hFont);

    if (infoPtr->nNumButtons == 0 && infoPtr->nNumStrings > 0)
    {
        TEXTMETRICW tm;

        GetTextMetricsW(hdc, &tm);
        lpSize->cy = tm.tmHeight;
    }

    btnPtr = infoPtr->buttons;
    for (i = 0; i < infoPtr->nNumButtons; i++, btnPtr++) {
        if(TOOLBAR_GetText(infoPtr, btnPtr))
        {
            TOOLBAR_MeasureString(infoPtr, btnPtr, hdc, &sz);
            if (sz.cx > lpSize->cx)
                lpSize->cx = sz.cx;
            if (sz.cy > lpSize->cy)
                lpSize->cy = sz.cy;
        }
    }

    SelectObject (hdc, hOldFont);
    ReleaseDC (infoPtr->hwndSelf, hdc);

    TRACE("max string size %d x %d\n", lpSize->cx, lpSize->cy);
}
