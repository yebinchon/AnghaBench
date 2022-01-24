#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_6__ {int /*<<< orphan*/ * hbmColor; int /*<<< orphan*/ * hbmMask; int /*<<< orphan*/  fIcon; } ;
struct TYPE_5__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ ICONINFO ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBRUSH ;
typedef  int /*<<< orphan*/ * HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDB_TRAYICON ; 
 int /*<<< orphan*/  IDB_TRAYMASK ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hInst ; 

HICON FUNC13(void)
{
    HICON     hTrayIcon = NULL;
    HDC       hScreenDC = NULL;
    HDC       hDC = NULL;
    HBITMAP   hBitmap = NULL;
    HBITMAP   hOldBitmap = NULL;
    HBITMAP   hBitmapMask = NULL;
    ICONINFO  iconInfo;
    ULONG     ProcessorUsage;
    int       nLinesToDraw;
    HBRUSH    hBitmapBrush = NULL;
    RECT      rc;

    /*
     * Get a handle to the screen DC
     */
    hScreenDC = FUNC6(NULL);
    if (!hScreenDC)
        goto done;

    /*
     * Create our own DC from it
     */
    hDC = FUNC0(hScreenDC);
    if (!hDC)
        goto done;

    /*
     * Load the bitmaps
     */
    hBitmap = FUNC7(hInst, FUNC8(IDB_TRAYICON));
    hBitmapMask = FUNC7(hInst, FUNC8(IDB_TRAYMASK));
    if (!hBitmap || !hBitmapMask)
        goto done;

    hBitmapBrush = FUNC2(FUNC10(0, 255, 0));
    if (!hBitmapBrush)
        goto done;

    /*
     * Select the bitmap into our device context
     * so we can draw on it.
     */
    hOldBitmap = (HBITMAP) FUNC12(hDC, hBitmap);

    /*
     * Get the cpu usage
     */
    ProcessorUsage = FUNC9();

    /*
     * Calculate how many lines to draw
     * since we have 11 rows of space
     * to draw the cpu usage instead of
     * just having 10.
     */
    nLinesToDraw = (ProcessorUsage + (ProcessorUsage / 10)) / 11;
    rc.left = 3;
    rc.top = 12 - nLinesToDraw;
    rc.right = 13;
    rc.bottom = 13;

    /*
     * Now draw the cpu usage
     */
    if (nLinesToDraw)
        FUNC5(hDC, &rc, hBitmapBrush);

    /*
     * Now that we are done drawing put the
     * old bitmap back.
     */
    hBitmap = FUNC12(hDC, hOldBitmap);
    hOldBitmap = NULL;

    iconInfo.fIcon = TRUE;
    iconInfo.hbmMask = hBitmapMask;
    iconInfo.hbmColor = hBitmap;

    hTrayIcon = FUNC1(&iconInfo);

done:
    /*
     * Cleanup
     */
    if (hScreenDC)
        FUNC11(NULL, hScreenDC);
    if (hDC)
        FUNC3(hDC);
    if (hBitmapBrush)
        FUNC4(hBitmapBrush);
    if (hBitmap)
        FUNC4(hBitmap);
    if (hBitmapMask)
        FUNC4(hBitmapMask);

    /*
     * Return the newly created tray icon (if successful)
     */
    return hTrayIcon;
}