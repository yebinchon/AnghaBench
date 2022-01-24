#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m_nClientHeight; int /*<<< orphan*/  m_nClientWidth; int /*<<< orphan*/ * m_dcPlot; int /*<<< orphan*/ * m_dcGrid; } ;
typedef  TYPE_1__ TGraphCtrl ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  SRCPAINT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC6(TGraphCtrl* this, HWND hWnd, HDC dc)
{
    HDC memDC;
    HBITMAP memBitmap;
    HBITMAP oldBitmap; /*  bitmap originally found in CMemDC */

/*   RECT rcClient; */
/*   GetClientRect(hWnd, &rcClient); */
/*   FillSolidRect(dc, &rcClient, RGB(255, 0, 255)); */
/*   m_nClientWidth = rcClient.right - rcClient.left; */
/*   m_nClientHeight = rcClient.bottom - rcClient.top; */

    /*  no real plotting work is performed here,  */
    /*  just putting the existing bitmaps on the client */

    /*  to avoid flicker, establish a memory dc, draw to it */
    /*  and then BitBlt it to the client */
    memDC = FUNC2(dc);
    memBitmap = (HBITMAP)FUNC1(dc, this->m_nClientWidth, this->m_nClientHeight);
    oldBitmap = (HBITMAP)FUNC5(memDC, memBitmap);

    if (memDC != NULL)
    {
        /*  first drop the grid on the memory dc */
        FUNC0(memDC, 0, 0, this->m_nClientWidth, this->m_nClientHeight, this->m_dcGrid, 0, 0, SRCCOPY);
        /*  now add the plot on top as a "pattern" via SRCPAINT. */
        /*  works well with dark background and a light plot */
        FUNC0(memDC, 0, 0, this->m_nClientWidth, this->m_nClientHeight, this->m_dcPlot, 0, 0, SRCPAINT);  /* SRCPAINT */
        /*  finally send the result to the display */
        FUNC0(dc, 0, 0, this->m_nClientWidth, this->m_nClientHeight, memDC, 0, 0, SRCCOPY);
    }
    FUNC5(memDC, oldBitmap);
    FUNC4(memBitmap);
    FUNC3(memDC);
}