
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lf ;
struct TYPE_9__ {int fIcon; int * hbmMask; int * hbmColor; } ;
struct TYPE_8__ {int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef char* LPWSTR ;
typedef int LOGFONTW ;
typedef int INT ;
typedef TYPE_2__ ICONINFO ;
typedef int * HICON ;
typedef int * HFONT ;
typedef scalar_t__ HDC ;
typedef int * HBITMAP ;
typedef scalar_t__ BOOL ;


 int BLACKNESS ;
 int COLOR_HIGHLIGHT ;
 int COLOR_HIGHLIGHTTEXT ;
 int COLOR_WINDOW ;
 int COLOR_WINDOWTEXT ;
 int * CreateBitmap (int,int,int,int,int *) ;
 int * CreateCompatibleBitmap (scalar_t__,int,int) ;
 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 int * CreateFontIndirectW (int *) ;
 int * CreateIconIndirect (TYPE_2__*) ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DeleteDC (scalar_t__) ;
 int DeleteObject (int *) ;
 int DrawTextW (scalar_t__,char*,int,TYPE_1__*,int) ;
 int ETO_OPAQUE ;
 int ExtTextOutW (scalar_t__,int ,int ,int ,TYPE_1__*,char*,int ,int *) ;
 scalar_t__ FALSE ;
 int FillRect (scalar_t__,TYPE_1__*,int ) ;
 scalar_t__ GetDC (int *) ;
 int GetSysColor (int ) ;
 int GetSysColorBrush (int ) ;
 int GetSystemMetrics (int ) ;
 int PatBlt (scalar_t__,int ,int ,int,int,int ) ;
 int ReleaseDC (int *,scalar_t__) ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 int SPI_GETICONTITLELOGFONT ;
 int * SelectObject (scalar_t__,int *) ;
 int SetBkColor (scalar_t__,int ) ;
 int SetRect (TYPE_1__*,int,int ,int,int) ;
 int SetTextColor (scalar_t__,int ) ;
 scalar_t__ SystemParametersInfoW (int ,int,int *,int ) ;
 int TRUE ;

__attribute__((used)) static HICON
CreateLayoutIcon(LPWSTR szLayout, BOOL bIsDefault)
{
    INT width = GetSystemMetrics(SM_CXSMICON) * 2;
    INT height = GetSystemMetrics(SM_CYSMICON);
    HDC hdc;
    HDC hdcsrc;
    HBITMAP hBitmap;
    HICON hIcon = ((void*)0);

    hdcsrc = GetDC(((void*)0));
    hdc = CreateCompatibleDC(hdcsrc);
    hBitmap = CreateCompatibleBitmap(hdcsrc, width, height);

    ReleaseDC(((void*)0), hdcsrc);

    if (hdc && hBitmap)
    {
        HBITMAP hBmpNew;

        hBmpNew = CreateBitmap(width, height, 1, 1, ((void*)0));
        if (hBmpNew)
        {
            LOGFONTW lf;

            if (SystemParametersInfoW(SPI_GETICONTITLELOGFONT, sizeof(lf), &lf, 0))
            {
                ICONINFO IconInfo;
                HFONT hFont;

                hFont = CreateFontIndirectW(&lf);

                if (hFont != ((void*)0))
                {
                    HBITMAP hBmpOld;

                    hBmpOld = SelectObject(hdc, hBitmap);

                    if (hBmpOld != ((void*)0))
                    {
                        RECT rect;

                        SetRect(&rect, 0, 0, width / 2, height);

                        if (bIsDefault != FALSE)
                        {
                            SetBkColor(hdc, GetSysColor(COLOR_WINDOW));
                            SetTextColor(hdc, GetSysColor(COLOR_WINDOWTEXT));

                            ExtTextOutW(hdc, rect.left, rect.top, ETO_OPAQUE, &rect, L"", 0, ((void*)0));

                            SelectObject(hdc, hFont);
                            DrawTextW(hdc, L"\x2022", 1, &rect, DT_SINGLELINE | DT_CENTER | DT_VCENTER);
                        }
                        else
                        {
                            FillRect(hdc, &rect, GetSysColorBrush(COLOR_WINDOW));
                        }

                        SetRect(&rect, width / 2, 0, width, height);

                        SetBkColor(hdc, GetSysColor(COLOR_HIGHLIGHT));
                        SetTextColor(hdc, GetSysColor(COLOR_HIGHLIGHTTEXT));

                        ExtTextOutW(hdc, rect.left, rect.top, ETO_OPAQUE, &rect, L"", 0, ((void*)0));

                        SelectObject(hdc, hFont);
                        DrawTextW(hdc, szLayout, 2, &rect, DT_SINGLELINE | DT_CENTER | DT_VCENTER);

                        SelectObject(hdc, hBmpNew);

                        PatBlt(hdc, 0, 0, width, height, BLACKNESS);

                        SelectObject(hdc, hBmpOld);

                        IconInfo.hbmColor = hBitmap;
                        IconInfo.hbmMask = hBmpNew;
                        IconInfo.fIcon = TRUE;

                        hIcon = CreateIconIndirect(&IconInfo);

                        DeleteObject(hBmpOld);
                    }

                    DeleteObject(hFont);
                }
            }

            DeleteObject(hBmpNew);
        }
    }

    DeleteDC(hdc);
    DeleteObject(hBitmap);

    return hIcon;
}
