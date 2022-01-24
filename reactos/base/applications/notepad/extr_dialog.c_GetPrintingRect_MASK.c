#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZRES ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  PHYSICALHEIGHT ; 
 int /*<<< orphan*/  PHYSICALOFFSETX ; 
 int /*<<< orphan*/  PHYSICALOFFSETY ; 
 int /*<<< orphan*/  PHYSICALWIDTH ; 
 int /*<<< orphan*/  VERTRES ; 

__attribute__((used)) static RECT
FUNC1(HDC hdc, RECT margins)
{
    int iLogPixelsX, iLogPixelsY;
    int iHorzRes, iVertRes;
    int iPhysPageX, iPhysPageY, iPhysPageW, iPhysPageH;
    RECT rcPrintRect;

    iPhysPageX = FUNC0(hdc, PHYSICALOFFSETX);
    iPhysPageY = FUNC0(hdc, PHYSICALOFFSETY);
    iPhysPageW = FUNC0(hdc, PHYSICALWIDTH);
    iPhysPageH = FUNC0(hdc, PHYSICALHEIGHT);
    iLogPixelsX = FUNC0(hdc, LOGPIXELSX);
    iLogPixelsY = FUNC0(hdc, LOGPIXELSY);
    iHorzRes = FUNC0(hdc, HORZRES);
    iVertRes = FUNC0(hdc, VERTRES);

    rcPrintRect.left = (margins.left * iLogPixelsX / 2540) - iPhysPageX;
    rcPrintRect.top = (margins.top * iLogPixelsY / 2540) - iPhysPageY;
    rcPrintRect.right = iHorzRes - (((margins.left * iLogPixelsX / 2540) - iPhysPageX) + ((margins.right * iLogPixelsX / 2540) - (iPhysPageW - iPhysPageX - iHorzRes)));
    rcPrintRect.bottom = iVertRes - (((margins.top * iLogPixelsY / 2540) - iPhysPageY) + ((margins.bottom * iLogPixelsY / 2540) - (iPhysPageH - iPhysPageY - iVertRes)));

    return rcPrintRect;
}