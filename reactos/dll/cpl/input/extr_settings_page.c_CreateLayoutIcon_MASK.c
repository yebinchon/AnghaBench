#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
struct TYPE_9__ {int /*<<< orphan*/  fIcon; int /*<<< orphan*/ * hbmMask; int /*<<< orphan*/ * hbmColor; } ;
struct TYPE_8__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  int INT ;
typedef  TYPE_2__ ICONINFO ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BLACKNESS ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHTTEXT ; 
 int /*<<< orphan*/  COLOR_WINDOW ; 
 int /*<<< orphan*/  COLOR_WINDOWTEXT ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 int /*<<< orphan*/  SPI_GETICONTITLELOGFONT ; 
 int /*<<< orphan*/ * FUNC16 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static HICON
FUNC21(LPWSTR szLayout, BOOL bIsDefault)
{
    INT width = FUNC13(SM_CXSMICON) * 2;
    INT height = FUNC13(SM_CYSMICON);
    HDC hdc;
    HDC hdcsrc;
    HBITMAP hBitmap;
    HICON hIcon = NULL;

    hdcsrc = FUNC10(NULL);
    hdc = FUNC2(hdcsrc);
    hBitmap = FUNC1(hdcsrc, width, height);

    FUNC15(NULL, hdcsrc);

    if (hdc && hBitmap)
    {
        HBITMAP hBmpNew;

        hBmpNew = FUNC0(width, height, 1, 1, NULL);
        if (hBmpNew)
        {
            LOGFONTW lf;

            if (FUNC20(SPI_GETICONTITLELOGFONT, sizeof(lf), &lf, 0))
            {
                ICONINFO IconInfo;
                HFONT hFont;

                hFont = FUNC3(&lf);

                if (hFont != NULL)
                {
                    HBITMAP hBmpOld;

                    hBmpOld = FUNC16(hdc, hBitmap);

                    if (hBmpOld != NULL)
                    {
                        RECT rect;

                        FUNC18(&rect, 0, 0, width / 2, height);

                        if (bIsDefault != FALSE)
                        {
                            FUNC17(hdc, FUNC11(COLOR_WINDOW));
                            FUNC19(hdc, FUNC11(COLOR_WINDOWTEXT));

                            FUNC8(hdc, rect.left, rect.top, ETO_OPAQUE, &rect, L"", 0, NULL);

                            FUNC16(hdc, hFont);
                            FUNC7(hdc, L"\x2022", 1, &rect, DT_SINGLELINE | DT_CENTER | DT_VCENTER);
                        }
                        else
                        {
                            FUNC9(hdc, &rect, FUNC12(COLOR_WINDOW));
                        }

                        FUNC18(&rect, width / 2, 0, width, height);

                        FUNC17(hdc, FUNC11(COLOR_HIGHLIGHT));
                        FUNC19(hdc, FUNC11(COLOR_HIGHLIGHTTEXT));

                        FUNC8(hdc, rect.left, rect.top, ETO_OPAQUE, &rect, L"", 0, NULL);

                        FUNC16(hdc, hFont);
                        FUNC7(hdc, szLayout, 2, &rect, DT_SINGLELINE | DT_CENTER | DT_VCENTER);

                        FUNC16(hdc, hBmpNew);

                        FUNC14(hdc, 0, 0, width, height, BLACKNESS);

                        FUNC16(hdc, hBmpOld);

                        IconInfo.hbmColor = hBitmap;
                        IconInfo.hbmMask = hBmpNew;
                        IconInfo.fIcon = TRUE;

                        hIcon = FUNC4(&IconInfo);

                        FUNC6(hBmpOld);
                    }

                    FUNC6(hFont);
                }
            }

            FUNC6(hBmpNew);
        }
    }

    FUNC5(hdc);
    FUNC6(hBitmap);

    return hIcon;
}