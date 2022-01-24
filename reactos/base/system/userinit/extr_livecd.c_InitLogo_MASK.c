#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  maskBitmap ;
typedef  int /*<<< orphan*/  logoBitmap ;
typedef  int /*<<< orphan*/  bmpi ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_11__ {int bmHeight; int bmWidth; int /*<<< orphan*/  bmPlanes; int /*<<< orphan*/  bmBitsPixel; } ;
struct TYPE_9__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_10__ {int cxSource; int cySource; int /*<<< orphan*/  iPlanes; int /*<<< orphan*/  iBits; int /*<<< orphan*/ * hBitmap; TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PIMGINFO ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int DWORD ;
typedef  int COLORREF ;
typedef  TYPE_2__ BITMAPINFO ;
typedef  TYPE_4__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  IDB_ROSLOGO ; 
 int /*<<< orphan*/  IDB_ROSMASK ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int /*<<< orphan*/  LR_DEFAULTCOLOR ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static VOID
FUNC14(PIMGINFO pImgInfo, HWND hwndDlg)
{
    BITMAP logoBitmap;
    BITMAP maskBitmap;
    BITMAPINFO bmpi;
    HDC hDC = FUNC5(hwndDlg);
    HDC hDCLogo = FUNC0(NULL);
    HDC hDCMask = FUNC0(NULL);
    HBITMAP hMask, hLogo, hAlphaLogo = NULL;
    COLORREF *pBits;
    INT line, column;

    FUNC13(pImgInfo, sizeof(*pImgInfo));
    FUNC13(&bmpi, sizeof(bmpi));

    hLogo = (HBITMAP)FUNC10(hInstance, FUNC11(IDB_ROSLOGO), IMAGE_BITMAP, 0, 0, LR_DEFAULTCOLOR);
    hMask = (HBITMAP)FUNC10(hInstance, FUNC11(IDB_ROSMASK), IMAGE_BITMAP, 0, 0, LR_DEFAULTCOLOR);

    if (hLogo != NULL && hMask != NULL)
    {
        FUNC7(hLogo, sizeof(logoBitmap), &logoBitmap);
        FUNC7(hMask, sizeof(maskBitmap), &maskBitmap);

        if (logoBitmap.bmHeight != maskBitmap.bmHeight || logoBitmap.bmWidth != maskBitmap.bmWidth)
            goto Cleanup;

        bmpi.bmiHeader.biSize = sizeof(BITMAPINFO);
        bmpi.bmiHeader.biWidth = logoBitmap.bmWidth;
        bmpi.bmiHeader.biHeight = logoBitmap.bmHeight;
        bmpi.bmiHeader.biPlanes = 1;
        bmpi.bmiHeader.biBitCount = 32;
        bmpi.bmiHeader.biCompression = BI_RGB;
        bmpi.bmiHeader.biSizeImage = 4 * logoBitmap.bmWidth * logoBitmap.bmHeight;

        /* Create a premultiplied bitmap */
        hAlphaLogo = FUNC1(hDC, &bmpi, DIB_RGB_COLORS, (PVOID*)&pBits, 0, 0);
        if (!hAlphaLogo)
            goto Cleanup;

        FUNC12(hDCLogo, hLogo);
        FUNC12(hDCMask, hMask);

        for (line = logoBitmap.bmHeight - 1; line >= 0; line--)
        {
            for (column = 0; column < logoBitmap.bmWidth; column++)
            {
                COLORREF alpha = FUNC8(hDCMask, column, line) & 0xFF;
                COLORREF Color = FUNC8(hDCLogo, column, line);
                DWORD r, g, b;

                r = FUNC9(Color) * alpha / 255;
                g = FUNC6(Color) * alpha / 255;
                b = FUNC4(Color) * alpha / 255;

                *pBits++ = b | g << 8 | r << 16 | alpha << 24;
            }
        }

        pImgInfo->hBitmap = hAlphaLogo;
        pImgInfo->cxSource = logoBitmap.bmWidth;
        pImgInfo->cySource = logoBitmap.bmHeight;
        pImgInfo->iBits = logoBitmap.bmBitsPixel;
        pImgInfo->iPlanes = logoBitmap.bmPlanes;
    }

Cleanup:
    FUNC3(hMask);
    FUNC3(hLogo);
    FUNC2(hDCMask);
    FUNC2(hDCLogo);
}