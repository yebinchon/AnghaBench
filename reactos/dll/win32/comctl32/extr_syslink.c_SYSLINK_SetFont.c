
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int lfUnderline; } ;
struct TYPE_10__ {int Self; int BreakChar; int * LinkFont; int Font; } ;
struct TYPE_9__ {int tmBreakChar; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ SYSLINK_INFO ;
typedef int RECT ;
typedef TYPE_3__ LOGFONTW ;
typedef int HFONT ;
typedef int * HDC ;
typedef scalar_t__ BOOL ;


 int * CreateFontIndirectW (TYPE_3__*) ;
 int DeleteObject (int *) ;
 int ERR (char*) ;
 scalar_t__ GetClientRect (int ,int *) ;
 int * GetDC (int ) ;
 scalar_t__ GetObjectW (int ,int,TYPE_3__*) ;
 scalar_t__ GetTextMetricsW (int *,TYPE_1__*) ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int *,int) ;
 int ReleaseDC (int ,int *) ;
 int SYSLINK_Render (TYPE_2__*,int *,int *) ;
 int TRUE ;

__attribute__((used)) static HFONT SYSLINK_SetFont (SYSLINK_INFO *infoPtr, HFONT hFont, BOOL bRedraw)
{
    HDC hdc;
    LOGFONTW lf;
    TEXTMETRICW tm;
    RECT rcClient;
    HFONT hOldFont = infoPtr->Font;
    infoPtr->Font = hFont;


    if(infoPtr->LinkFont != ((void*)0))
    {
        DeleteObject(infoPtr->LinkFont);
        infoPtr->LinkFont = ((void*)0);
    }


    if (GetClientRect(infoPtr->Self, &rcClient))
    {
        hdc = GetDC(infoPtr->Self);
        if(hdc != ((void*)0))
        {

            if(GetTextMetricsW(hdc, &tm) &&
               GetObjectW(infoPtr->Font, sizeof(LOGFONTW), &lf))
            {
                lf.lfUnderline = TRUE;
                infoPtr->LinkFont = CreateFontIndirectW(&lf);
                infoPtr->BreakChar = tm.tmBreakChar;
            }
            else
            {
                ERR("Failed to create link font!\n");
            }

            SYSLINK_Render(infoPtr, hdc, &rcClient);
            ReleaseDC(infoPtr->Self, hdc);
        }
    }

    if(bRedraw)
    {
        RedrawWindow(infoPtr->Self, ((void*)0), ((void*)0), RDW_INVALIDATE | RDW_UPDATENOW);
    }

    return hOldFont;
}
