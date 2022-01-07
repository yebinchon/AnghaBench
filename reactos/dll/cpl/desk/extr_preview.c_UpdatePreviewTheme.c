
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int lfMessageFont; int lfMenuFont; int lfCaptionFont; int iBorderWidth; int iScrollWidth; scalar_t__ iMenuHeight; scalar_t__ iCaptionHeight; } ;
struct TYPE_8__ {TYPE_1__ ncMetrics; int * crColor; } ;
struct TYPE_7__ {int cxEdge; int cyEdge; TYPE_3__ Scheme; int * hMessageFont; int * hMenuFont; int * hCaptionFont; int cyBorder; int cxScrollbar; scalar_t__ cyMenu; scalar_t__ cyCaption; int cySizeFrame; int * hbrWindow; int * hbrDesktop; int * hbrScrollbar; } ;
typedef TYPE_2__* PPREVIEW_DATA ;
typedef int HWND ;
typedef TYPE_3__ COLOR_SCHEME ;


 size_t COLOR_DESKTOP ;
 size_t COLOR_SCROLLBAR ;
 size_t COLOR_WINDOW ;
 void* CreateFontIndirect (int *) ;
 void* CreateSolidBrush (int ) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;

__attribute__((used)) static VOID UpdatePreviewTheme(HWND hwnd, PPREVIEW_DATA pPreviewData, COLOR_SCHEME *scheme)
{
    if (pPreviewData->hbrScrollbar != ((void*)0))
        DeleteObject(pPreviewData->hbrScrollbar);
    pPreviewData->hbrScrollbar = CreateSolidBrush(scheme->crColor[COLOR_SCROLLBAR]);
    if (pPreviewData->hbrDesktop != ((void*)0))
        DeleteObject(pPreviewData->hbrDesktop);

    pPreviewData->hbrDesktop = CreateSolidBrush(scheme->crColor[COLOR_DESKTOP]);
    if (pPreviewData->hbrWindow != ((void*)0))
        DeleteObject(pPreviewData->hbrWindow);
    pPreviewData->hbrWindow = CreateSolidBrush(scheme->crColor[COLOR_WINDOW]);

    pPreviewData->cxEdge = 2;
    pPreviewData->cyEdge = 2;

    pPreviewData->cySizeFrame = scheme->ncMetrics.iBorderWidth;

    pPreviewData->cyCaption = scheme->ncMetrics.iCaptionHeight+1;
    pPreviewData->cyMenu = scheme->ncMetrics.iMenuHeight -1;
    pPreviewData->cxScrollbar = scheme->ncMetrics.iScrollWidth;
    pPreviewData->cyBorder = scheme->ncMetrics.iBorderWidth;

    if (pPreviewData->hCaptionFont != ((void*)0))
        DeleteObject(pPreviewData->hCaptionFont);
    pPreviewData->hCaptionFont = CreateFontIndirect(&scheme->ncMetrics.lfCaptionFont);

    if (pPreviewData->hMenuFont != ((void*)0))
        DeleteObject(pPreviewData->hMenuFont);
    pPreviewData->hMenuFont = CreateFontIndirect(&scheme->ncMetrics.lfMenuFont);

    if (pPreviewData->hMessageFont != ((void*)0))
        DeleteObject(pPreviewData->hMessageFont);
    pPreviewData->hMessageFont = CreateFontIndirect(&scheme->ncMetrics.lfMessageFont);

    pPreviewData->Scheme = *scheme;
    InvalidateRect(hwnd, ((void*)0), FALSE);
}
