
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int biSize; scalar_t__ biCompression; int biHeight; } ;
struct TYPE_7__ {int * bmiColors; TYPE_1__ bmiHeader; } ;
typedef int RGBQUAD ;
typedef int LPCSTR ;
typedef TYPE_2__* LPBITMAPINFO ;
typedef int * HDC ;
typedef int * HBITMAP ;
typedef int DWORD ;
typedef int D3DFORMAT ;
typedef int BITMAPINFOHEADER ;


 scalar_t__ BI_BITFIELDS ;
 int * CreateCompatibleBitmap (int *,int,int) ;
 int * CreateDCA (int *,int ,int *,int *) ;
 int D3DFMT_R5G6B5 ;
 int D3DFMT_X1R5G5B5 ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 scalar_t__ GetDIBits (int *,int *,int ,int ,int *,TYPE_2__*,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static D3DFORMAT Get16BitD3DFormat(LPCSTR lpszDeviceName)
{
    HDC hDC;
    HBITMAP hBitmap;
    LPBITMAPINFO pBitmapInfo;
    D3DFORMAT Format = D3DFMT_R5G6B5;

    if (((void*)0) == (hDC = CreateDCA(((void*)0), lpszDeviceName, ((void*)0), ((void*)0))))
    {
        return Format;
    }

    if (((void*)0) == (hBitmap = CreateCompatibleBitmap(hDC, 1, 1)))
    {
        DeleteDC(hDC);
        return Format;
    }

    pBitmapInfo = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(BITMAPINFOHEADER) + 4 * sizeof(RGBQUAD));
    if (((void*)0) == pBitmapInfo)
    {
        DeleteObject(hBitmap);
        DeleteDC(hDC);
        return Format;
    }

    pBitmapInfo->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    if (GetDIBits(hDC, hBitmap, 0, 0, ((void*)0), pBitmapInfo, DIB_RGB_COLORS) > 0)
    {
        if (pBitmapInfo->bmiHeader.biCompression == BI_BITFIELDS)
        {
            if (GetDIBits(hDC, hBitmap, 0, pBitmapInfo->bmiHeader.biHeight, ((void*)0), pBitmapInfo, DIB_RGB_COLORS) > 0)
            {

                if (*(DWORD*)(&pBitmapInfo->bmiColors[1]) == 0x000003E0)
                {
                    Format = D3DFMT_X1R5G5B5;
                }
            }
        }
    }

    HeapFree(GetProcessHeap(), 0, pBitmapInfo);
    DeleteObject(hBitmap);
    DeleteDC(hDC);

    return Format;
}
