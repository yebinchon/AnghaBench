
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int tmHeight; int tmExternalLeading; } ;
struct TYPE_5__ {int normalImageHeight; int dwStyle; int hFont; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef TYPE_2__ TEXTMETRICW ;
typedef int HFONT ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetTextMetricsW (int ,TYPE_2__*) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int TVHEIGHT_FONT_ADJUST ;
 int TVHEIGHT_MIN ;
 int TVS_NONEVENHEIGHT ;

__attribute__((used)) static UINT
TREEVIEW_NaturalHeight(const TREEVIEW_INFO *infoPtr)
{
    TEXTMETRICW tm;
    HDC hdc = GetDC(0);
    HFONT hOldFont = SelectObject(hdc, infoPtr->hFont);
    UINT height;






    GetTextMetricsW(hdc, &tm);
    SelectObject(hdc, hOldFont);
    ReleaseDC(0, hdc);

    height = TVHEIGHT_MIN;
    if (height < tm.tmHeight + tm.tmExternalLeading + TVHEIGHT_FONT_ADJUST)
        height = tm.tmHeight + tm.tmExternalLeading + TVHEIGHT_FONT_ADJUST;
    if (height < infoPtr->normalImageHeight)
        height = infoPtr->normalImageHeight;


    if (!(infoPtr->dwStyle & TVS_NONEVENHEIGHT))
        height &= ~1;

    return height;
}
