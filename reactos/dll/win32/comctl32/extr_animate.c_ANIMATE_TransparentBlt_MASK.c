#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* inbih; int /*<<< orphan*/  transparentColor; } ;
struct TYPE_4__ {int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biWidth; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_2__ ANIMATE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  SRCAND ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  SRCPAINT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(ANIMATE_INFO const *infoPtr, HDC hdcDest, HDC hdcSource)
{
    HDC hdcMask;
    HBITMAP hbmMask;
    HBITMAP hbmOld;

    /* create a transparency mask */
    hdcMask = FUNC2(hdcDest);
    hbmMask = FUNC1(infoPtr->inbih->biWidth, infoPtr->inbih->biHeight, 1,1,NULL);
    hbmOld = FUNC6(hdcMask, hbmMask);

    FUNC7(hdcSource,infoPtr->transparentColor);
    FUNC0(hdcMask,0,0,infoPtr->inbih->biWidth, infoPtr->inbih->biHeight,hdcSource,0,0,SRCCOPY);

    /* mask the source bitmap */
    FUNC7(hdcSource, FUNC5(0,0,0));
    FUNC8(hdcSource, FUNC5(255,255,255));
    FUNC0(hdcSource, 0, 0, infoPtr->inbih->biWidth, infoPtr->inbih->biHeight, hdcMask, 0, 0, SRCAND);

    /* mask the destination bitmap */
    FUNC7(hdcDest, FUNC5(255,255,255));
    FUNC8(hdcDest, FUNC5(0,0,0));
    FUNC0(hdcDest, 0, 0, infoPtr->inbih->biWidth, infoPtr->inbih->biHeight, hdcMask, 0, 0, SRCAND);

    /* combine source and destination */
    FUNC0(hdcDest,0,0,infoPtr->inbih->biWidth, infoPtr->inbih->biHeight,hdcSource,0,0,SRCPAINT);

    FUNC6(hdcMask, hbmOld);
    FUNC4(hbmMask);
    FUNC3(hdcMask);
}