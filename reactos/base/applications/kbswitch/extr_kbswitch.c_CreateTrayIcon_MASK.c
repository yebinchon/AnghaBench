#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fIcon; void* hbmMask; void* hbmColor; } ;
struct TYPE_6__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  scalar_t__ LANGID ;
typedef  TYPE_2__ ICONINFO ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  void* HFONT ;
typedef  scalar_t__ HDC ;
typedef  void* HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BLACKNESS ; 
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHTTEXT ; 
 void* FUNC1 (int,int,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  DEFAULT_QUALITY ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FF_DONTCARE ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_SISO639LANGNAME ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC15 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HICON
FUNC22(LPTSTR szLCID)
{
    LANGID lId;
    TCHAR szBuf[3];
    HDC hdc, hdcsrc;
    HBITMAP hBitmap, hBmpNew, hBmpOld;
    RECT rect;
    HFONT hFontOld, hFont = NULL;
    ICONINFO IconInfo;
    HICON hIcon = NULL;

    lId = (LANGID)FUNC20(szLCID, NULL, 16);
    if (FUNC11(lId,
                      LOCALE_SISO639LANGNAME,
                      szBuf,
                      FUNC0(szBuf)) == 0)
    {
        FUNC18(szBuf, FUNC0(szBuf), FUNC19("??"));
    }

    hdcsrc = FUNC10(NULL);
    hdc = FUNC3(hdcsrc);
    hBitmap = FUNC2(hdcsrc, 16, 16);
    FUNC14(NULL, hdcsrc);

    if (hdc && hBitmap)
    {
        hBmpNew = FUNC1(16, 16, 1, 1, NULL);
        if (hBmpNew)
        {
            hBmpOld = FUNC15(hdc, hBitmap);
            rect.right = 16;
            rect.left = 0;
            rect.bottom = 16;
            rect.top = 0;

            FUNC16(hdc, FUNC12(COLOR_HIGHLIGHT));
            FUNC17(hdc, FUNC12(COLOR_HIGHLIGHTTEXT));

            FUNC9(hdc, rect.left, rect.top, ETO_OPAQUE, &rect, FUNC19(""), 0, NULL);

            hFont = FUNC4(-11, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, ANSI_CHARSET,
                               OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
                               DEFAULT_QUALITY, FF_DONTCARE, FUNC19("Tahoma"));

            hFontOld = FUNC15(hdc, hFont);
            FUNC8(hdc, FUNC21(szBuf), 2, &rect, DT_SINGLELINE|DT_CENTER|DT_VCENTER);
            FUNC15(hdc, hBmpNew);
            FUNC13(hdc, 0, 0, 16, 16, BLACKNESS);
            FUNC15(hdc, hBmpOld);
            FUNC15(hdc, hFontOld);

            IconInfo.hbmColor = hBitmap;
            IconInfo.hbmMask = hBmpNew;
            IconInfo.fIcon = TRUE;

            hIcon = FUNC5(&IconInfo);

            FUNC7(hBmpNew);
            FUNC7(hBmpOld);
            FUNC7(hFont);
        }
    }

    FUNC6(hdc);
    FUNC7(hBitmap);

    return hIcon;
}