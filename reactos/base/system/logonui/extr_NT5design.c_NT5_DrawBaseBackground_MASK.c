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
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ cy; scalar_t__ cx; int /*<<< orphan*/  hInstance; } ;
struct TYPE_10__ {scalar_t__ bmHeight; int /*<<< orphan*/  bmWidth; } ;
struct TYPE_9__ {int LowerRight; scalar_t__ UpperLeft; } ;
struct TYPE_8__ {int Red; int Green; int Blue; int Alpha; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ TRIVERTEX ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBRUSH ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  TYPE_2__ GRADIENT_RECT ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_3__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GRADIENT_FILL_RECT_H ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDB_BOTTOM_DIVIDER_STRIP ; 
 int /*<<< orphan*/  IDB_MAIN_PANEL_SHINE ; 
 int /*<<< orphan*/  IDB_TOP_DIVIDER_STRIP ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int /*<<< orphan*/  LR_DEFAULTCOLOR ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ NT5_BOTTOM_BORDER_HEIGHT ; 
 scalar_t__ NT5_TOP_BORDER_HEIGHT ; 
 int /*<<< orphan*/  PATCOPY ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* g_pInfo ; 

HDC
FUNC16(HDC hdcDesktop)
{
    HBITMAP hBitmap = NULL;
    HDC hdcMem = NULL;
    BOOL bRet = FALSE;


    /* Create an an off screen DC to match the desktop DC */
    hdcMem = FUNC2(hdcDesktop);
    if (hdcMem)
    {
        /* Create a bitmap to draw the logoff screen onto */
        hBitmap = FUNC1(hdcDesktop, g_pInfo->cx, g_pInfo->cy);
        if (hBitmap)
        {
            /* Select it onto our off screen DC*/
            FUNC14(hdcMem, hBitmap);

            /* Draw the centre block */
            {
                HBITMAP hTempBitmap;
                HBRUSH hBrush;
                BITMAP bitmap;
                HDC hTempDC;

                /* Paint the blue centre block */
                hBrush = FUNC3(FUNC13(90, 126, 220));
                FUNC14(hdcMem, hBrush);
                FUNC12(hdcMem,
                        0,
                        NT5_TOP_BORDER_HEIGHT,
                        g_pInfo->cx,
                        g_pInfo->cy - NT5_TOP_BORDER_HEIGHT - NT5_BOTTOM_BORDER_HEIGHT,
                        PATCOPY);
                FUNC5(hBrush);

                /* Load the shine effect */
                hTempBitmap = (HBITMAP)FUNC9(g_pInfo->hInstance,
                                                    FUNC11(IDB_MAIN_PANEL_SHINE),
                                                    IMAGE_BITMAP,
                                                    0,
                                                    0,
                                                    LR_DEFAULTCOLOR);
                if (hTempBitmap)
                {
                    /* Get the bitmap dimensions */
                    FUNC6(hTempBitmap, sizeof(BITMAP), &bitmap);

                    /* Create a temp DC for the bitmap */
                    hTempDC = FUNC2(hdcDesktop);
                    if (hTempDC)
                    {
                        /* Select the bitmap onto the temp DC */
                        FUNC14(hTempDC, hTempBitmap);

                        /* Paint it onto the top left of the centre block */
                        FUNC0(hdcMem,
                                0,
                                NT5_TOP_BORDER_HEIGHT,
                                bitmap.bmWidth,
                                bitmap.bmHeight,
                                hTempDC,
                                0,
                                0,
                                SRCCOPY);

                        /* Delete the DC */
                        FUNC4(hTempDC);
                    }

                    /* Delete the bitmap */
                    FUNC5(hTempBitmap);
                }
            }

            /* Draw the top border */
            {
                HBITMAP hTempBitmap;
                HBRUSH hBrush;
                BITMAP bitmap;
                HDC hTempDC;

                /* Create the blue brush and paint the top bar */
                hBrush = FUNC3(FUNC13(0, 48, 156));
                FUNC14(hdcMem, hBrush);
                FUNC12(hdcMem, 0, 0, g_pInfo->cx, NT5_TOP_BORDER_HEIGHT, PATCOPY);
                FUNC5(hBrush);

                /* Load the top divider strip */
                hTempBitmap = (HBITMAP)FUNC9(g_pInfo->hInstance,
                                                    FUNC11(IDB_TOP_DIVIDER_STRIP),
                                                    IMAGE_BITMAP,
                                                    0,
                                                    0,
                                                    LR_DEFAULTCOLOR);
                if (hTempBitmap)
                {
                    /* Get the bitmap dimensions */
                    FUNC6(hTempBitmap, sizeof(BITMAP), &bitmap);

                    /* Create a temp DC for the bitmap */
                    hTempDC = FUNC2(hdcDesktop);
                    if (hTempDC)
                    {
                        /* Select the bitmap onto the temp DC */
                        FUNC14(hTempDC, hTempBitmap);

                        /* Paint the bitmap */
                        FUNC15(hdcMem,
                                    0,
                                    NT5_TOP_BORDER_HEIGHT - bitmap.bmHeight,
                                    g_pInfo->cx,
                                    NT5_TOP_BORDER_HEIGHT,
                                    hTempDC,
                                    0,
                                    0,
                                    bitmap.bmWidth,
                                    NT5_TOP_BORDER_HEIGHT,
                                    SRCCOPY);

                        /* Delete the DC */
                        FUNC4(hTempDC);
                    }

                    /* Delete the bitmap */
                    FUNC5(hTempBitmap);
                }
            }

            /* Draw the bottom border */
            {
                HBITMAP hTempBitmap;
                TRIVERTEX vertex[2];
                GRADIENT_RECT gRect;
                BITMAP bitmap;
                HDC hTempDC;

                /*
                 * We paint the divider strip first as it's 3
                 * pixels high but MS only show 2 of them.
                 */

                /* Load the bottom divider strip */
                hTempBitmap = (HBITMAP)FUNC8(g_pInfo->hInstance,
                                                    FUNC10(IDB_BOTTOM_DIVIDER_STRIP),
                                                    IMAGE_BITMAP,
                                                    0,
                                                    0,
                                                    LR_DEFAULTCOLOR);
                if (hTempBitmap)
                {
                    /* Get the bitmap dimensions */
                    FUNC6(hTempBitmap, sizeof(BITMAP), &bitmap);

                    /* Create a temp DC for the bitmap */
                    hTempDC = FUNC2(hdcDesktop);
                    if (hTempDC)
                    {
                        /* Select the bitmap onto the temp DC */
                        FUNC14(hTempDC, hTempBitmap);

                        /* Paint the bitmap */
                        FUNC15(hdcMem,
                                    0,
                                    g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT,
                                    g_pInfo->cx,
                                    g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT + bitmap.bmHeight,
                                    hTempDC,
                                    0,
                                    0,
                                    bitmap.bmWidth,
                                    g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT + bitmap.bmHeight,
                                    SRCCOPY);

                        /* Delete the DC */
                        FUNC4(hTempDC);
                    }

                    /* Delete the bitmap */
                    FUNC5(hTempBitmap);
                }

                /* Setup the left hand vertex */
                vertex[0].x     = 0;
                vertex[0].y     = g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT + 2; // paint over 1 pixel of the bitmap
                vertex[0].Red   = 0x3900;
                vertex[0].Green = 0x3400;
                vertex[0].Blue  = 0xAE00;
                vertex[0].Alpha = 0x0000;

                /* Setup the right hand vertex */
                vertex[1].x     = g_pInfo->cx;
                vertex[1].y     = g_pInfo->cy;
                vertex[1].Red   = 0x0000;
                vertex[1].Green = 0x3000;
                vertex[1].Blue  = 0x9600;
                vertex[1].Alpha = 0x0000;

                /* Set the vertex structs */
                gRect.UpperLeft  = 0;
                gRect.LowerRight = 1;

                /* Paint the gradient across the bottom */
                FUNC7(hdcMem,
                                vertex,
                                2,
                                &gRect,
                                1,
                                GRADIENT_FILL_RECT_H);
            }

            /* Delete the bitmap */
            FUNC5(hBitmap);
        }
    }

    return hdcMem;
}