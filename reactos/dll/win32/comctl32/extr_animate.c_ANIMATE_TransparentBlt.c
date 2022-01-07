
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* inbih; int transparentColor; } ;
struct TYPE_4__ {int biHeight; int biWidth; } ;
typedef int HDC ;
typedef int HBITMAP ;
typedef TYPE_2__ ANIMATE_INFO ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CreateBitmap (int ,int ,int,int,int *) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int RGB (int,int,int) ;
 int SRCAND ;
 int SRCCOPY ;
 int SRCPAINT ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;

__attribute__((used)) static void ANIMATE_TransparentBlt(ANIMATE_INFO const *infoPtr, HDC hdcDest, HDC hdcSource)
{
    HDC hdcMask;
    HBITMAP hbmMask;
    HBITMAP hbmOld;


    hdcMask = CreateCompatibleDC(hdcDest);
    hbmMask = CreateBitmap(infoPtr->inbih->biWidth, infoPtr->inbih->biHeight, 1,1,((void*)0));
    hbmOld = SelectObject(hdcMask, hbmMask);

    SetBkColor(hdcSource,infoPtr->transparentColor);
    BitBlt(hdcMask,0,0,infoPtr->inbih->biWidth, infoPtr->inbih->biHeight,hdcSource,0,0,SRCCOPY);


    SetBkColor(hdcSource, RGB(0,0,0));
    SetTextColor(hdcSource, RGB(255,255,255));
    BitBlt(hdcSource, 0, 0, infoPtr->inbih->biWidth, infoPtr->inbih->biHeight, hdcMask, 0, 0, SRCAND);


    SetBkColor(hdcDest, RGB(255,255,255));
    SetTextColor(hdcDest, RGB(0,0,0));
    BitBlt(hdcDest, 0, 0, infoPtr->inbih->biWidth, infoPtr->inbih->biHeight, hdcMask, 0, 0, SRCAND);


    BitBlt(hdcDest,0,0,infoPtr->inbih->biWidth, infoPtr->inbih->biHeight,hdcSource,0,0,SRCPAINT);

    SelectObject(hdcMask, hbmOld);
    DeleteObject(hbmMask);
    DeleteDC(hdcMask);
}
