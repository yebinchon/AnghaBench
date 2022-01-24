#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* outdata; void* indata; int dwStyle; int /*<<< orphan*/  hwndSelf; void* hbmPrevFrame; int /*<<< orphan*/  hbrushBG; int /*<<< orphan*/  transparentColor; TYPE_2__* inbih; TYPE_1__* outbih; scalar_t__ hic; } ;
struct TYPE_12__ {int right; int left; int bottom; int top; } ;
struct TYPE_11__ {int biWidth; int biHeight; } ;
struct TYPE_10__ {int biWidth; int biHeight; } ;
typedef  TYPE_3__ RECT ;
typedef  int* LPBITMAPINFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  void* HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFO ;
typedef  TYPE_4__ ANIMATE_INFO ;

/* Variables and functions */
 int ACS_CENTER ; 
 int ACS_TRANSPARENT ; 
 int /*<<< orphan*/  ANIMATE_COLOR_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  OBJ_BRUSH ; 
 int /*<<< orphan*/  SRCCOPY ; 
 void* FUNC10 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,void const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC13(ANIMATE_INFO* infoPtr, HDC hDC)
{
    void const *pBitmapData;
    BITMAPINFO const *pBitmapInfo;
    HDC hdcMem;
    HBITMAP hbmOld;
    int nOffsetX = 0;
    int nOffsetY = 0;
    int nWidth;
    int nHeight;

    if (!hDC || !infoPtr->inbih)
	return TRUE;

    if (infoPtr->hic )
    {
        pBitmapData = infoPtr->outdata;
        pBitmapInfo = (LPBITMAPINFO)infoPtr->outbih;

        nWidth = infoPtr->outbih->biWidth;
        nHeight = infoPtr->outbih->biHeight;
    } 
    else
    {
        pBitmapData = infoPtr->indata;
        pBitmapInfo = (LPBITMAPINFO)infoPtr->inbih;

        nWidth = infoPtr->inbih->biWidth;
        nHeight = infoPtr->inbih->biHeight;
    }

    if(!infoPtr->hbmPrevFrame)
    {
        infoPtr->hbmPrevFrame=FUNC2(hDC, nWidth,nHeight );
    }

    hdcMem = FUNC3(hDC);
    hbmOld = FUNC10(hdcMem, infoPtr->hbmPrevFrame);

    FUNC11(hdcMem, infoPtr->hbmPrevFrame, 0, nHeight, pBitmapData, pBitmapInfo, DIB_RGB_COLORS);

    /*
     * we need to get the transparent color even without ACS_TRANSPARENT,
     * because the style can be changed later on and the color should always
     * be obtained in the first frame
     */
    if(infoPtr->transparentColor == ANIMATE_COLOR_NONE)
    {
        infoPtr->transparentColor = FUNC8(hdcMem,0,0);
    }

    if(infoPtr->dwStyle & ACS_TRANSPARENT)
    {
        HDC hdcFinal = FUNC3(hDC);
        HBITMAP hbmFinal = FUNC2(hDC,nWidth, nHeight);
        HBITMAP hbmOld2 = FUNC10(hdcFinal, hbmFinal);
        RECT rect;

        FUNC12(&rect, 0, 0, nWidth, nHeight);

        if(!infoPtr->hbrushBG)
            infoPtr->hbrushBG = FUNC7(hDC, OBJ_BRUSH);

        FUNC6(hdcFinal, &rect, infoPtr->hbrushBG);
        FUNC0(infoPtr, hdcFinal, hdcMem);

        FUNC10(hdcFinal, hbmOld2);
        FUNC10(hdcMem, hbmFinal);
        FUNC4(hdcFinal);
        FUNC5(infoPtr->hbmPrevFrame);
        infoPtr->hbmPrevFrame = hbmFinal;
    }

    if (infoPtr->dwStyle & ACS_CENTER)
    {
        RECT rect;

        FUNC9(infoPtr->hwndSelf, &rect);
        nOffsetX = ((rect.right - rect.left) - nWidth)/2;
        nOffsetY = ((rect.bottom - rect.top) - nHeight)/2;
    }
    FUNC1(hDC, nOffsetX, nOffsetY, nWidth, nHeight, hdcMem, 0, 0, SRCCOPY);

    FUNC10(hdcMem, hbmOld);
    FUNC4(hdcMem);
    return TRUE;
}