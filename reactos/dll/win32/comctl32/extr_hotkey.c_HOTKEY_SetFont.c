
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hwndSelf; int hFont; int nHeight; } ;
struct TYPE_5__ {int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef int LRESULT ;
typedef TYPE_2__ HOTKEY_INFO ;
typedef int HFONT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int GetDC (int ) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
HOTKEY_SetFont (HOTKEY_INFO *infoPtr, HFONT hFont, BOOL redraw)
{
    TEXTMETRICW tm;
    HDC hdc;
    HFONT hOldFont = 0;

    infoPtr->hFont = hFont;

    hdc = GetDC (infoPtr->hwndSelf);
    if (infoPtr->hFont)
 hOldFont = SelectObject (hdc, infoPtr->hFont);

    GetTextMetricsW (hdc, &tm);
    infoPtr->nHeight = tm.tmHeight;

    if (infoPtr->hFont)
 SelectObject (hdc, hOldFont);
    ReleaseDC (infoPtr->hwndSelf, hdc);

    if (redraw)
 InvalidateRect (infoPtr->hwndSelf, ((void*)0), TRUE);

    return 0;
}
