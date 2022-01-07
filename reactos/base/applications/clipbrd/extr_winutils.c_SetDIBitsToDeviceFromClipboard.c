
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_11__ {int bcBitCount; int bcHeight; int bcWidth; } ;
struct TYPE_10__ {int biSize; int biClrUsed; int biBitCount; scalar_t__ biCompression; int biHeight; int biWidth; } ;
struct TYPE_9__ {int hdc; } ;
struct TYPE_8__ {int CurrentY; int CurrentX; } ;
typedef TYPE_1__ SCROLLSTATE ;
typedef int RGBTRIPLE ;
typedef int RGBQUAD ;
typedef TYPE_2__ PAINTSTRUCT ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_3__* LPBITMAPINFOHEADER ;
typedef int LPBITMAPINFO ;
typedef TYPE_4__* LPBITMAPCOREHEADER ;
typedef int LONG ;
typedef int HGLOBAL ;
typedef int DWORD ;
typedef int BITMAPV5HEADER ;
typedef int BITMAPV4HEADER ;
typedef int BITMAPINFOHEADER ;
typedef int BITMAPCOREHEADER ;


 scalar_t__ BI_BITFIELDS ;
 int DIB_RGB_COLORS ;
 int GetClipboardData (int ) ;
 TYPE_3__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int SetDIBitsToDevice (int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,int ,int ) ;

void SetDIBitsToDeviceFromClipboard(UINT uFormat, PAINTSTRUCT ps, SCROLLSTATE state, UINT fuColorUse)
{
    HGLOBAL hGlobal;
    LPBITMAPINFOHEADER lpInfoHeader;
    LPBYTE lpBits;
    LONG bmWidth, bmHeight;
    DWORD dwPalSize = 0;

    hGlobal = GetClipboardData(uFormat);
    if (!hGlobal)
        return;

    lpInfoHeader = GlobalLock(hGlobal);
    if (!lpInfoHeader)
        return;

    if (lpInfoHeader->biSize == sizeof(BITMAPCOREHEADER))
    {
        LPBITMAPCOREHEADER lpCoreHeader = (LPBITMAPCOREHEADER)lpInfoHeader;

        dwPalSize = 0;

        if (lpCoreHeader->bcBitCount <= 8)
        {
            dwPalSize = (1 << lpCoreHeader->bcBitCount);

            if (fuColorUse == DIB_RGB_COLORS)
                dwPalSize *= sizeof(RGBTRIPLE);
            else
                dwPalSize *= sizeof(WORD);
        }

        bmWidth = lpCoreHeader->bcWidth;
        bmHeight = lpCoreHeader->bcHeight;
    }
    else if ((lpInfoHeader->biSize == sizeof(BITMAPINFOHEADER)) ||
             (lpInfoHeader->biSize == sizeof(BITMAPV4HEADER)) ||
             (lpInfoHeader->biSize == sizeof(BITMAPV5HEADER)))
    {
        dwPalSize = lpInfoHeader->biClrUsed;

        if ((dwPalSize == 0) && (lpInfoHeader->biBitCount <= 8))
            dwPalSize = (1 << lpInfoHeader->biBitCount);

        if (fuColorUse == DIB_RGB_COLORS)
            dwPalSize *= sizeof(RGBQUAD);
        else
            dwPalSize *= sizeof(WORD);

        if (
            (lpInfoHeader->biCompression == BI_BITFIELDS))
        {
            dwPalSize += 3 * sizeof(DWORD);
        }
        bmWidth = lpInfoHeader->biWidth;

        bmHeight = lpInfoHeader->biHeight;
    }
    else
    {

        GlobalUnlock(hGlobal);
        return;
    }

    lpBits = (LPBYTE)lpInfoHeader + lpInfoHeader->biSize + dwPalSize;






    SetDIBitsToDevice(ps.hdc,
                      -state.CurrentX,
                      -state.CurrentY,
                      bmWidth,
                      bmHeight,
                      0,
                      0,
                      0,
                      bmHeight,
                      lpBits,
                      (LPBITMAPINFO)lpInfoHeader,
                      fuColorUse);

    GlobalUnlock(hGlobal);
}
