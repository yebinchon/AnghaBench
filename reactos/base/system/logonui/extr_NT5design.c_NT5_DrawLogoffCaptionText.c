
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int cy; int cx; } ;
struct TYPE_8__ {int lfHeight; int lfWeight; int lfFaceName; int lfCharSet; } ;
struct TYPE_7__ {int top; int left; int right; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef int LPWSTR ;
typedef TYPE_2__ LOGFONTW ;
typedef int INT ;
typedef scalar_t__ HFONT ;
typedef int HDC ;


 scalar_t__ CreateFontIndirectW (TYPE_2__*) ;
 int DEFAULT_CHARSET ;
 int DT_NOPREFIX ;
 int DT_RIGHT ;
 int DT_WORDBREAK ;
 int DeleteObject (scalar_t__) ;
 int DrawTextW (int ,int ,int,TYPE_1__*,int) ;
 scalar_t__ GetDeviceCaps (int ,int ) ;
 int LF_FACESIZE ;
 int LOGPIXELSY ;
 int RGB (int,int,int) ;
 int SelectObject (int ,scalar_t__) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRANSPARENT ;
 int ZeroMemory (TYPE_2__*,int) ;
 TYPE_3__* g_pInfo ;
 int wcscpy_s (int ,int ,char*) ;

__attribute__((used)) static VOID
NT5_DrawLogoffCaptionText(LPWSTR lpText,
                          HDC hdcMem)
{
    HFONT hFont;
    LOGFONTW LogFont;
    RECT TextRect;
    INT PrevBkMode;


    ZeroMemory(&LogFont, sizeof(LOGFONTW));
    LogFont.lfCharSet = DEFAULT_CHARSET;
    LogFont.lfHeight = 22;
    LogFont.lfWeight = 109;
    wcscpy_s(LogFont.lfFaceName, LF_FACESIZE, L"Arial");


    hFont = CreateFontIndirectW(&LogFont);
    if (hFont)
    {

        SelectObject(hdcMem, hFont);
        SetTextColor(hdcMem, RGB(255, 255, 255));


        TextRect.top = (g_pInfo->cy / 2) + 34;
        TextRect.bottom = (g_pInfo->cy / 2) + 34 + (GetDeviceCaps(hdcMem, LOGPIXELSY));
        TextRect.left = g_pInfo->cx / 3;
        TextRect.right = (g_pInfo->cx / 2) + 35 + 137;


        PrevBkMode = SetBkMode(hdcMem, TRANSPARENT);


        DrawTextW(hdcMem,
                  lpText,
                  -1,
                  &TextRect,
                  DT_NOPREFIX | DT_WORDBREAK | DT_RIGHT);


        SetBkMode(hdcMem, PrevBkMode);


        DeleteObject(hFont);
    }
}
