
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_6__ {int hwndSelf; int bRectsValid; scalar_t__ nHeight; scalar_t__ hFont; } ;
struct TYPE_5__ {scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef int LRESULT ;
typedef scalar_t__ HFONT ;
typedef TYPE_2__ HEADER_INFO ;
typedef int HDC ;


 int FALSE ;
 int GetDC (int ) ;
 scalar_t__ GetStockObject (int ) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int ReleaseDC (int ,int ) ;
 int SYSTEM_FONT ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 scalar_t__ VERT_BORDER ;

__attribute__((used)) static LRESULT
HEADER_SetFont (HEADER_INFO *infoPtr, HFONT hFont, WORD Redraw)
{
    TEXTMETRICW tm;
    HFONT hOldFont;
    HDC hdc;

    infoPtr->hFont = hFont;

    hdc = GetDC (0);
    hOldFont = SelectObject (hdc, infoPtr->hFont ? infoPtr->hFont : GetStockObject (SYSTEM_FONT));
    GetTextMetricsW (hdc, &tm);
    infoPtr->nHeight = tm.tmHeight + VERT_BORDER;
    SelectObject (hdc, hOldFont);
    ReleaseDC (0, hdc);

    infoPtr->bRectsValid = FALSE;

    if (Redraw) {
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);
    }

    return 0;
}
