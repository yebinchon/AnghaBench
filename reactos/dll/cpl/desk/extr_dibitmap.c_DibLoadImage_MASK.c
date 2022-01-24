#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int Width; int Height; int Stride; scalar_t__ Reserved; TYPE_2__* Scan0; int /*<<< orphan*/  PixelFormat; } ;
struct TYPE_9__ {int biSize; int biWidth; int biPlanes; int biBitCount; int biSizeImage; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biHeight; } ;
struct TYPE_10__ {int width; int height; struct TYPE_10__* info; struct TYPE_10__* bits; TYPE_1__ bmiHeader; } ;
typedef  TYPE_2__* PDIBITMAP ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  DIBITMAP ;
typedef  TYPE_3__ BitmapData ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int ImageLockModeRead ; 
 int ImageLockModeUserInputBuf ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PixelFormat32bppPARGB ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

PDIBITMAP
FUNC10(LPTSTR lpFilename)
{
    PDIBITMAP lpBitmap;
    GpBitmap  *bitmap;
    BitmapData lock;

    if (FUNC2(lpFilename, &bitmap) != Ok)
    {
        return NULL;
    }

    lpBitmap = FUNC7(FUNC6(), 0, sizeof(DIBITMAP));
    if (lpBitmap == NULL)
    {
        FUNC3((GpImage*)bitmap);
        return NULL;
    }

    lpBitmap->info = FUNC7(FUNC6(), 0, sizeof(BITMAPINFO));
    if (lpBitmap->info == NULL)
    {
        FUNC8(FUNC6(), 0, lpBitmap);
        FUNC3((GpImage*)bitmap);
        return NULL;
    }

    if (FUNC5((GpImage*)bitmap, &lpBitmap->width) != Ok ||
        FUNC4((GpImage*)bitmap, &lpBitmap->height) != Ok)
    {
        FUNC8(FUNC6(), 0, lpBitmap->info);
        FUNC8(FUNC6(), 0, lpBitmap);
        FUNC3((GpImage*)bitmap);
        return NULL;
    }

    lpBitmap->bits = FUNC7(FUNC6(), 0, lpBitmap->width * lpBitmap->height * 4);
    if (!lpBitmap->bits)
    {
        FUNC8(FUNC6(), 0, lpBitmap->info);
        FUNC8(FUNC6(), 0, lpBitmap);
        FUNC3((GpImage*)bitmap);
        return NULL;
    }

    FUNC9(lpBitmap->info, sizeof(BITMAPINFO));
    lpBitmap->info->bmiHeader.biSize        = sizeof(BITMAPINFOHEADER);
    lpBitmap->info->bmiHeader.biWidth       = lpBitmap->width;
    lpBitmap->info->bmiHeader.biHeight      = -(INT)lpBitmap->height;
    lpBitmap->info->bmiHeader.biPlanes      = 1;
    lpBitmap->info->bmiHeader.biBitCount    = 32;
    lpBitmap->info->bmiHeader.biCompression = BI_RGB;
    lpBitmap->info->bmiHeader.biSizeImage   = lpBitmap->width * lpBitmap->height * 4;

    lock.Width = lpBitmap->width;
    lock.Height = lpBitmap->height;
    lock.Stride = lpBitmap->width * 4;
    lock.PixelFormat = PixelFormat32bppPARGB;
    lock.Scan0  = lpBitmap->bits;
    lock.Reserved = 0;

    if (FUNC0(bitmap, NULL, ImageLockModeRead | ImageLockModeUserInputBuf, PixelFormat32bppPARGB, &lock) != Ok)
    {
        FUNC8(FUNC6(), 0, lpBitmap->bits);
        FUNC8(FUNC6(), 0, lpBitmap->info);
        FUNC8(FUNC6(), 0, lpBitmap);
        FUNC3((GpImage*)bitmap);
        return NULL;
    }

    FUNC1(bitmap, &lock);
    FUNC3((GpImage*)bitmap);

    return lpBitmap;
}