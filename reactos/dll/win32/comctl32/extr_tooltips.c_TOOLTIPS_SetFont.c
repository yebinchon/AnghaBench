
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lf ;
struct TYPE_7__ {int lfWeight; } ;
struct TYPE_6__ {int nCurrentTool; void* hTitleFont; void* hFont; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef TYPE_2__ LOGFONTW ;
typedef int HFONT ;
typedef scalar_t__ BOOL ;


 void* CreateFontIndirectW (TYPE_2__*) ;
 int DeleteObject (void*) ;
 int FIXME (char*) ;
 int FW_BOLD ;
 int GetObjectW (int ,int,TYPE_2__*) ;

__attribute__((used)) static LRESULT
TOOLTIPS_SetFont (TOOLTIPS_INFO *infoPtr, HFONT hFont, BOOL redraw)
{
    LOGFONTW lf;

    if(!GetObjectW(hFont, sizeof(lf), &lf))
        return 0;

    DeleteObject (infoPtr->hFont);
    infoPtr->hFont = CreateFontIndirectW(&lf);

    DeleteObject (infoPtr->hTitleFont);
    lf.lfWeight = FW_BOLD;
    infoPtr->hTitleFont = CreateFontIndirectW(&lf);

    if (redraw && infoPtr->nCurrentTool != -1)
        FIXME("full redraw needed\n");

    return 0;
}
