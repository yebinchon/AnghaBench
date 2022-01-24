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
struct TYPE_6__ {int biSize; scalar_t__ biCompression; int /*<<< orphan*/  biHeight; } ;
struct TYPE_7__ {int /*<<< orphan*/ * bmiColors; TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  TYPE_2__* LPBITMAPINFO ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  D3DFORMAT ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;

/* Variables and functions */
 scalar_t__ BI_BITFIELDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D3DFMT_R5G6B5 ; 
 int /*<<< orphan*/  D3DFMT_X1R5G5B5 ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static D3DFORMAT FUNC8(LPCSTR lpszDeviceName)
{
    HDC hDC;
    HBITMAP hBitmap;
    LPBITMAPINFO pBitmapInfo;
    D3DFORMAT Format = D3DFMT_R5G6B5;

    if (NULL == (hDC = FUNC1(NULL, lpszDeviceName, NULL, NULL)))
    {
        return Format;
    }

    if (NULL == (hBitmap = FUNC0(hDC, 1, 1)))
    {
        FUNC2(hDC);
        return Format;
    }

    pBitmapInfo = FUNC6(FUNC5(), HEAP_ZERO_MEMORY, sizeof(BITMAPINFOHEADER) + 4 * sizeof(RGBQUAD));
    if (NULL == pBitmapInfo)
    {
        FUNC3(hBitmap);
        FUNC2(hDC);
        return Format;
    }

    pBitmapInfo->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    if (FUNC4(hDC, hBitmap, 0, 0, NULL, pBitmapInfo, DIB_RGB_COLORS) > 0)
    {
        if (pBitmapInfo->bmiHeader.biCompression == BI_BITFIELDS)
        {
            if (FUNC4(hDC, hBitmap, 0, pBitmapInfo->bmiHeader.biHeight, NULL, pBitmapInfo, DIB_RGB_COLORS) > 0)
            {
                /* Check if the green field is 6 bits long */
                if (*(DWORD*)(&pBitmapInfo->bmiColors[1]) == 0x000003E0)
                {
                    Format = D3DFMT_X1R5G5B5;
                }
            }
        }
    }

    FUNC7(FUNC5(), 0, pBitmapInfo);
    FUNC3(hBitmap);
    FUNC2(hDC);

    return Format;
}