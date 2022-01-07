
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {void* outdata; void* indata; int dwStyle; int hwndSelf; void* hbmPrevFrame; int hbrushBG; int transparentColor; TYPE_2__* inbih; TYPE_1__* outbih; scalar_t__ hic; } ;
struct TYPE_12__ {int right; int left; int bottom; int top; } ;
struct TYPE_11__ {int biWidth; int biHeight; } ;
struct TYPE_10__ {int biWidth; int biHeight; } ;
typedef TYPE_3__ RECT ;
typedef int* LPBITMAPINFO ;
typedef int HDC ;
typedef void* HBITMAP ;
typedef int BOOL ;
typedef int BITMAPINFO ;
typedef TYPE_4__ ANIMATE_INFO ;


 int ACS_CENTER ;
 int ACS_TRANSPARENT ;
 int ANIMATE_COLOR_NONE ;
 int ANIMATE_TransparentBlt (TYPE_4__*,int ,int ) ;
 int BitBlt (int ,int,int,int,int,int ,int ,int ,int ) ;
 void* CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (void*) ;
 int FillRect (int ,TYPE_3__*,int ) ;
 int GetCurrentObject (int ,int ) ;
 int GetPixel (int ,int ,int ) ;
 int GetWindowRect (int ,TYPE_3__*) ;
 int OBJ_BRUSH ;
 int SRCCOPY ;
 void* SelectObject (int ,void*) ;
 int SetDIBits (int ,void*,int ,int,void const*,int const*,int ) ;
 int SetRect (TYPE_3__*,int ,int ,int,int) ;
 int TRUE ;

__attribute__((used)) static BOOL ANIMATE_PaintFrame(ANIMATE_INFO* infoPtr, HDC hDC)
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
        infoPtr->hbmPrevFrame=CreateCompatibleBitmap(hDC, nWidth,nHeight );
    }

    hdcMem = CreateCompatibleDC(hDC);
    hbmOld = SelectObject(hdcMem, infoPtr->hbmPrevFrame);

    SetDIBits(hdcMem, infoPtr->hbmPrevFrame, 0, nHeight, pBitmapData, pBitmapInfo, DIB_RGB_COLORS);






    if(infoPtr->transparentColor == ANIMATE_COLOR_NONE)
    {
        infoPtr->transparentColor = GetPixel(hdcMem,0,0);
    }

    if(infoPtr->dwStyle & ACS_TRANSPARENT)
    {
        HDC hdcFinal = CreateCompatibleDC(hDC);
        HBITMAP hbmFinal = CreateCompatibleBitmap(hDC,nWidth, nHeight);
        HBITMAP hbmOld2 = SelectObject(hdcFinal, hbmFinal);
        RECT rect;

        SetRect(&rect, 0, 0, nWidth, nHeight);

        if(!infoPtr->hbrushBG)
            infoPtr->hbrushBG = GetCurrentObject(hDC, OBJ_BRUSH);

        FillRect(hdcFinal, &rect, infoPtr->hbrushBG);
        ANIMATE_TransparentBlt(infoPtr, hdcFinal, hdcMem);

        SelectObject(hdcFinal, hbmOld2);
        SelectObject(hdcMem, hbmFinal);
        DeleteDC(hdcFinal);
        DeleteObject(infoPtr->hbmPrevFrame);
        infoPtr->hbmPrevFrame = hbmFinal;
    }

    if (infoPtr->dwStyle & ACS_CENTER)
    {
        RECT rect;

        GetWindowRect(infoPtr->hwndSelf, &rect);
        nOffsetX = ((rect.right - rect.left) - nWidth)/2;
        nOffsetY = ((rect.bottom - rect.top) - nHeight)/2;
    }
    BitBlt(hDC, nOffsetX, nOffsetY, nWidth, nHeight, hdcMem, 0, 0, SRCCOPY);

    SelectObject(hdcMem, hbmOld);
    DeleteDC(hdcMem);
    return TRUE;
}
