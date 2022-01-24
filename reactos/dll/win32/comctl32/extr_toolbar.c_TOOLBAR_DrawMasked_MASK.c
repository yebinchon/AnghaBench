#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  COLOR_3DHILIGHT ; 
 int /*<<< orphan*/  COLOR_3DSHADOW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILD_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int NOTSRCERASE ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(HIMAGELIST himl, int index, HDC hdc, INT x, INT y, UINT draw_flags)
{
    INT cx, cy;
    HBITMAP hbmMask, hbmImage;
    HDC hdcMask, hdcImage;

    FUNC8(himl, &cx, &cy);

    /* Create src image */
    hdcImage = FUNC3(hdc);
    hbmImage = FUNC2(hdc, cx, cy);
    FUNC10(hdcImage, hbmImage);
    FUNC7(himl, index, hdcImage, 0, 0, cx, cy,
                     FUNC9(0xff, 0xff, 0xff), FUNC9(0,0,0), draw_flags);

    /* Create Mask */
    hdcMask = FUNC3(0);
    hbmMask = FUNC1(cx, cy, 1, 1, NULL);
    FUNC10(hdcMask, hbmMask);

    /* Remove the background and all white pixels */
    FUNC7(himl, index, hdcMask, 0, 0, cx, cy,
                     FUNC9(0xff, 0xff, 0xff), FUNC9(0,0,0), ILD_MASK);
    FUNC11(hdcImage, FUNC9(0xff, 0xff, 0xff));
    FUNC0(hdcMask, 0, 0, cx, cy, hdcImage, 0, 0, NOTSRCERASE);

    /* draw the new mask 'etched' to hdc */
    FUNC11(hdc, FUNC9(255, 255, 255));
    FUNC10(hdc, FUNC6(COLOR_3DHILIGHT));
    /* E20746 op code is (Dst ^ (Src & (Pat ^ Dst))) */
    FUNC0(hdc, x + 1, y + 1, cx, cy, hdcMask, 0, 0, 0xE20746);
    FUNC10(hdc, FUNC6(COLOR_3DSHADOW));
    FUNC0(hdc, x, y, cx, cy, hdcMask, 0, 0, 0xE20746);

    /* Cleanup */
    FUNC5(hbmImage);
    FUNC4(hdcImage);
    FUNC5 (hbmMask);
    FUNC4(hdcMask);
}