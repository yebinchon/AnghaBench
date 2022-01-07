
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int HDC ;


 int GetDeviceCaps (int ,int ) ;
 int HORZRES ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 int PHYSICALHEIGHT ;
 int PHYSICALOFFSETX ;
 int PHYSICALOFFSETY ;
 int PHYSICALWIDTH ;
 int VERTRES ;

__attribute__((used)) static RECT
GetPrintingRect(HDC hdc, RECT margins)
{
    int iLogPixelsX, iLogPixelsY;
    int iHorzRes, iVertRes;
    int iPhysPageX, iPhysPageY, iPhysPageW, iPhysPageH;
    RECT rcPrintRect;

    iPhysPageX = GetDeviceCaps(hdc, PHYSICALOFFSETX);
    iPhysPageY = GetDeviceCaps(hdc, PHYSICALOFFSETY);
    iPhysPageW = GetDeviceCaps(hdc, PHYSICALWIDTH);
    iPhysPageH = GetDeviceCaps(hdc, PHYSICALHEIGHT);
    iLogPixelsX = GetDeviceCaps(hdc, LOGPIXELSX);
    iLogPixelsY = GetDeviceCaps(hdc, LOGPIXELSY);
    iHorzRes = GetDeviceCaps(hdc, HORZRES);
    iVertRes = GetDeviceCaps(hdc, VERTRES);

    rcPrintRect.left = (margins.left * iLogPixelsX / 2540) - iPhysPageX;
    rcPrintRect.top = (margins.top * iLogPixelsY / 2540) - iPhysPageY;
    rcPrintRect.right = iHorzRes - (((margins.left * iLogPixelsX / 2540) - iPhysPageX) + ((margins.right * iLogPixelsX / 2540) - (iPhysPageW - iPhysPageX - iHorzRes)));
    rcPrintRect.bottom = iVertRes - (((margins.top * iLogPixelsY / 2540) - iPhysPageY) + ((margins.bottom * iLogPixelsY / 2540) - (iPhysPageH - iPhysPageY - iVertRes)));

    return rcPrintRect;
}
