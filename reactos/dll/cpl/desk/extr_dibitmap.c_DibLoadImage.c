
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int Width; int Height; int Stride; scalar_t__ Reserved; TYPE_2__* Scan0; int PixelFormat; } ;
struct TYPE_9__ {int biSize; int biWidth; int biPlanes; int biBitCount; int biSizeImage; int biCompression; int biHeight; } ;
struct TYPE_10__ {int width; int height; struct TYPE_10__* info; struct TYPE_10__* bits; TYPE_1__ bmiHeader; } ;
typedef TYPE_2__* PDIBITMAP ;
typedef int LPTSTR ;
typedef int INT ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef int DIBITMAP ;
typedef TYPE_3__ BitmapData ;
typedef int BITMAPINFOHEADER ;
typedef int BITMAPINFO ;


 int BI_RGB ;
 scalar_t__ GdipBitmapLockBits (int *,int *,int,int ,TYPE_3__*) ;
 int GdipBitmapUnlockBits (int *,TYPE_3__*) ;
 scalar_t__ GdipCreateBitmapFromFile (int ,int **) ;
 int GdipDisposeImage (int *) ;
 scalar_t__ GdipGetImageHeight (int *,int*) ;
 scalar_t__ GdipGetImageWidth (int *,int*) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int ImageLockModeRead ;
 int ImageLockModeUserInputBuf ;
 scalar_t__ Ok ;
 int PixelFormat32bppPARGB ;
 int ZeroMemory (TYPE_2__*,int) ;

PDIBITMAP
DibLoadImage(LPTSTR lpFilename)
{
    PDIBITMAP lpBitmap;
    GpBitmap *bitmap;
    BitmapData lock;

    if (GdipCreateBitmapFromFile(lpFilename, &bitmap) != Ok)
    {
        return ((void*)0);
    }

    lpBitmap = HeapAlloc(GetProcessHeap(), 0, sizeof(DIBITMAP));
    if (lpBitmap == ((void*)0))
    {
        GdipDisposeImage((GpImage*)bitmap);
        return ((void*)0);
    }

    lpBitmap->info = HeapAlloc(GetProcessHeap(), 0, sizeof(BITMAPINFO));
    if (lpBitmap->info == ((void*)0))
    {
        HeapFree(GetProcessHeap(), 0, lpBitmap);
        GdipDisposeImage((GpImage*)bitmap);
        return ((void*)0);
    }

    if (GdipGetImageWidth((GpImage*)bitmap, &lpBitmap->width) != Ok ||
        GdipGetImageHeight((GpImage*)bitmap, &lpBitmap->height) != Ok)
    {
        HeapFree(GetProcessHeap(), 0, lpBitmap->info);
        HeapFree(GetProcessHeap(), 0, lpBitmap);
        GdipDisposeImage((GpImage*)bitmap);
        return ((void*)0);
    }

    lpBitmap->bits = HeapAlloc(GetProcessHeap(), 0, lpBitmap->width * lpBitmap->height * 4);
    if (!lpBitmap->bits)
    {
        HeapFree(GetProcessHeap(), 0, lpBitmap->info);
        HeapFree(GetProcessHeap(), 0, lpBitmap);
        GdipDisposeImage((GpImage*)bitmap);
        return ((void*)0);
    }

    ZeroMemory(lpBitmap->info, sizeof(BITMAPINFO));
    lpBitmap->info->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    lpBitmap->info->bmiHeader.biWidth = lpBitmap->width;
    lpBitmap->info->bmiHeader.biHeight = -(INT)lpBitmap->height;
    lpBitmap->info->bmiHeader.biPlanes = 1;
    lpBitmap->info->bmiHeader.biBitCount = 32;
    lpBitmap->info->bmiHeader.biCompression = BI_RGB;
    lpBitmap->info->bmiHeader.biSizeImage = lpBitmap->width * lpBitmap->height * 4;

    lock.Width = lpBitmap->width;
    lock.Height = lpBitmap->height;
    lock.Stride = lpBitmap->width * 4;
    lock.PixelFormat = PixelFormat32bppPARGB;
    lock.Scan0 = lpBitmap->bits;
    lock.Reserved = 0;

    if (GdipBitmapLockBits(bitmap, ((void*)0), ImageLockModeRead | ImageLockModeUserInputBuf, PixelFormat32bppPARGB, &lock) != Ok)
    {
        HeapFree(GetProcessHeap(), 0, lpBitmap->bits);
        HeapFree(GetProcessHeap(), 0, lpBitmap->info);
        HeapFree(GetProcessHeap(), 0, lpBitmap);
        GdipDisposeImage((GpImage*)bitmap);
        return ((void*)0);
    }

    GdipBitmapUnlockBits(bitmap, &lock);
    GdipDisposeImage((GpImage*)bitmap);

    return lpBitmap;
}
