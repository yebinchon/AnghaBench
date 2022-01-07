
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fIcon; void* hbmMask; void* hbmColor; } ;
struct TYPE_6__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
typedef int TCHAR ;
typedef TYPE_1__ RECT ;
typedef int LPTSTR ;
typedef scalar_t__ LANGID ;
typedef TYPE_2__ ICONINFO ;
typedef int * HICON ;
typedef void* HFONT ;
typedef scalar_t__ HDC ;
typedef void* HBITMAP ;


 int ANSI_CHARSET ;
 int ARRAYSIZE (int *) ;
 int BLACKNESS ;
 int CLIP_DEFAULT_PRECIS ;
 int COLOR_HIGHLIGHT ;
 int COLOR_HIGHLIGHTTEXT ;
 void* CreateBitmap (int,int,int,int,int *) ;
 void* CreateCompatibleBitmap (scalar_t__,int,int) ;
 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 void* CreateFont (int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int * CreateIconIndirect (TYPE_2__*) ;
 int DEFAULT_QUALITY ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DeleteDC (scalar_t__) ;
 int DeleteObject (void*) ;
 int DrawText (scalar_t__,int ,int,TYPE_1__*,int) ;
 int ETO_OPAQUE ;
 int ExtTextOut (scalar_t__,scalar_t__,scalar_t__,int ,TYPE_1__*,int ,int ,int *) ;
 int FALSE ;
 int FF_DONTCARE ;
 int FW_NORMAL ;
 scalar_t__ GetDC (int *) ;
 scalar_t__ GetLocaleInfo (scalar_t__,int ,int *,int ) ;
 int GetSysColor (int ) ;
 int LOCALE_SISO639LANGNAME ;
 int OUT_DEFAULT_PRECIS ;
 int PatBlt (scalar_t__,int ,int ,int,int,int ) ;
 int ReleaseDC (int *,scalar_t__) ;
 void* SelectObject (scalar_t__,void*) ;
 int SetBkColor (scalar_t__,int ) ;
 int SetTextColor (scalar_t__,int ) ;
 int StringCchCopy (int *,int ,int ) ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcstoul (int ,int *,int) ;
 int _tcsupr (int *) ;

__attribute__((used)) static HICON
CreateTrayIcon(LPTSTR szLCID)
{
    LANGID lId;
    TCHAR szBuf[3];
    HDC hdc, hdcsrc;
    HBITMAP hBitmap, hBmpNew, hBmpOld;
    RECT rect;
    HFONT hFontOld, hFont = ((void*)0);
    ICONINFO IconInfo;
    HICON hIcon = ((void*)0);

    lId = (LANGID)_tcstoul(szLCID, ((void*)0), 16);
    if (GetLocaleInfo(lId,
                      LOCALE_SISO639LANGNAME,
                      szBuf,
                      ARRAYSIZE(szBuf)) == 0)
    {
        StringCchCopy(szBuf, ARRAYSIZE(szBuf), _T("??"));
    }

    hdcsrc = GetDC(((void*)0));
    hdc = CreateCompatibleDC(hdcsrc);
    hBitmap = CreateCompatibleBitmap(hdcsrc, 16, 16);
    ReleaseDC(((void*)0), hdcsrc);

    if (hdc && hBitmap)
    {
        hBmpNew = CreateBitmap(16, 16, 1, 1, ((void*)0));
        if (hBmpNew)
        {
            hBmpOld = SelectObject(hdc, hBitmap);
            rect.right = 16;
            rect.left = 0;
            rect.bottom = 16;
            rect.top = 0;

            SetBkColor(hdc, GetSysColor(COLOR_HIGHLIGHT));
            SetTextColor(hdc, GetSysColor(COLOR_HIGHLIGHTTEXT));

            ExtTextOut(hdc, rect.left, rect.top, ETO_OPAQUE, &rect, _T(""), 0, ((void*)0));

            hFont = CreateFont(-11, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, ANSI_CHARSET,
                               OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
                               DEFAULT_QUALITY, FF_DONTCARE, _T("Tahoma"));

            hFontOld = SelectObject(hdc, hFont);
            DrawText(hdc, _tcsupr(szBuf), 2, &rect, DT_SINGLELINE|DT_CENTER|DT_VCENTER);
            SelectObject(hdc, hBmpNew);
            PatBlt(hdc, 0, 0, 16, 16, BLACKNESS);
            SelectObject(hdc, hBmpOld);
            SelectObject(hdc, hFontOld);

            IconInfo.hbmColor = hBitmap;
            IconInfo.hbmMask = hBmpNew;
            IconInfo.fIcon = TRUE;

            hIcon = CreateIconIndirect(&IconInfo);

            DeleteObject(hBmpNew);
            DeleteObject(hBmpOld);
            DeleteObject(hFont);
        }
    }

    DeleteDC(hdc);
    DeleteObject(hBitmap);

    return hIcon;
}
