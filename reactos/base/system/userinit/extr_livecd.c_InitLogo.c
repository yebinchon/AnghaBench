
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int maskBitmap ;
typedef int logoBitmap ;
typedef int bmpi ;
typedef int VOID ;
struct TYPE_11__ {int bmHeight; int bmWidth; int bmPlanes; int bmBitsPixel; } ;
struct TYPE_9__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biCompression; } ;
struct TYPE_10__ {int cxSource; int cySource; int iPlanes; int iBits; int * hBitmap; TYPE_1__ bmiHeader; } ;
typedef int PVOID ;
typedef TYPE_2__* PIMGINFO ;
typedef int INT ;
typedef int HWND ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int DWORD ;
typedef int COLORREF ;
typedef TYPE_2__ BITMAPINFO ;
typedef TYPE_4__ BITMAP ;


 int BI_RGB ;
 int CreateCompatibleDC (int *) ;
 int * CreateDIBSection (int ,TYPE_2__*,int ,int *,int ,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (int *) ;
 int GetBValue (int) ;
 int GetDC (int ) ;
 int GetGValue (int) ;
 int GetObject (int *,int,TYPE_4__*) ;
 int GetPixel (int ,int,int) ;
 int GetRValue (int) ;
 int IDB_ROSLOGO ;
 int IDB_ROSMASK ;
 int IMAGE_BITMAP ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImageW (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int SelectObject (int ,int *) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int hInstance ;

__attribute__((used)) static VOID
InitLogo(PIMGINFO pImgInfo, HWND hwndDlg)
{
    BITMAP logoBitmap;
    BITMAP maskBitmap;
    BITMAPINFO bmpi;
    HDC hDC = GetDC(hwndDlg);
    HDC hDCLogo = CreateCompatibleDC(((void*)0));
    HDC hDCMask = CreateCompatibleDC(((void*)0));
    HBITMAP hMask, hLogo, hAlphaLogo = ((void*)0);
    COLORREF *pBits;
    INT line, column;

    ZeroMemory(pImgInfo, sizeof(*pImgInfo));
    ZeroMemory(&bmpi, sizeof(bmpi));

    hLogo = (HBITMAP)LoadImageW(hInstance, MAKEINTRESOURCEW(IDB_ROSLOGO), IMAGE_BITMAP, 0, 0, LR_DEFAULTCOLOR);
    hMask = (HBITMAP)LoadImageW(hInstance, MAKEINTRESOURCEW(IDB_ROSMASK), IMAGE_BITMAP, 0, 0, LR_DEFAULTCOLOR);

    if (hLogo != ((void*)0) && hMask != ((void*)0))
    {
        GetObject(hLogo, sizeof(logoBitmap), &logoBitmap);
        GetObject(hMask, sizeof(maskBitmap), &maskBitmap);

        if (logoBitmap.bmHeight != maskBitmap.bmHeight || logoBitmap.bmWidth != maskBitmap.bmWidth)
            goto Cleanup;

        bmpi.bmiHeader.biSize = sizeof(BITMAPINFO);
        bmpi.bmiHeader.biWidth = logoBitmap.bmWidth;
        bmpi.bmiHeader.biHeight = logoBitmap.bmHeight;
        bmpi.bmiHeader.biPlanes = 1;
        bmpi.bmiHeader.biBitCount = 32;
        bmpi.bmiHeader.biCompression = BI_RGB;
        bmpi.bmiHeader.biSizeImage = 4 * logoBitmap.bmWidth * logoBitmap.bmHeight;


        hAlphaLogo = CreateDIBSection(hDC, &bmpi, DIB_RGB_COLORS, (PVOID*)&pBits, 0, 0);
        if (!hAlphaLogo)
            goto Cleanup;

        SelectObject(hDCLogo, hLogo);
        SelectObject(hDCMask, hMask);

        for (line = logoBitmap.bmHeight - 1; line >= 0; line--)
        {
            for (column = 0; column < logoBitmap.bmWidth; column++)
            {
                COLORREF alpha = GetPixel(hDCMask, column, line) & 0xFF;
                COLORREF Color = GetPixel(hDCLogo, column, line);
                DWORD r, g, b;

                r = GetRValue(Color) * alpha / 255;
                g = GetGValue(Color) * alpha / 255;
                b = GetBValue(Color) * alpha / 255;

                *pBits++ = b | g << 8 | r << 16 | alpha << 24;
            }
        }

        pImgInfo->hBitmap = hAlphaLogo;
        pImgInfo->cxSource = logoBitmap.bmWidth;
        pImgInfo->cySource = logoBitmap.bmHeight;
        pImgInfo->iBits = logoBitmap.bmBitsPixel;
        pImgInfo->iPlanes = logoBitmap.bmPlanes;
    }

Cleanup:
    DeleteObject(hMask);
    DeleteObject(hLogo);
    DeleteDC(hDCMask);
    DeleteDC(hDCLogo);
}
