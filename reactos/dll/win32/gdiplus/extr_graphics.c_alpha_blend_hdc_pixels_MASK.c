#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biClrImportant; scalar_t__ biClrUsed; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdc; } ;
typedef  int PixelFormat ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpGraphics ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_2__ BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 scalar_t__ DT_RASPRINTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int PixelFormatPAlpha ; 
 scalar_t__ SB_NONE ; 
 int /*<<< orphan*/  SHADEBLENDCAPS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TECHNOLOGY ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static GpStatus FUNC9(GpGraphics *graphics, INT dst_x, INT dst_y,
    const BYTE *src, INT src_width, INT src_height, INT src_stride, PixelFormat fmt)
{
    HDC hdc;
    HBITMAP hbitmap;
    BITMAPINFOHEADER bih;
    BYTE *temp_bits;

    hdc = FUNC0(0);

    bih.biSize = sizeof(BITMAPINFOHEADER);
    bih.biWidth = src_width;
    bih.biHeight = -src_height;
    bih.biPlanes = 1;
    bih.biBitCount = 32;
    bih.biCompression = BI_RGB;
    bih.biSizeImage = 0;
    bih.biXPelsPerMeter = 0;
    bih.biYPelsPerMeter = 0;
    bih.biClrUsed = 0;
    bih.biClrImportant = 0;

    hbitmap = FUNC1(hdc, (BITMAPINFO*)&bih, DIB_RGB_COLORS,
        (void**)&temp_bits, NULL, 0);

    if ((FUNC4(graphics->hdc, TECHNOLOGY) == DT_RASPRINTER &&
         FUNC4(graphics->hdc, SHADEBLENDCAPS) == SB_NONE) ||
            fmt & PixelFormatPAlpha)
        FUNC8(temp_bits, src, src_width * src_height * 4);
    else
        FUNC6(src_width, src_height, temp_bits,
                                        4 * src_width, src, src_stride);

    FUNC5(hdc, hbitmap);
    FUNC7(graphics, dst_x, dst_y, src_width, src_height,
                    hdc, 0, 0, src_width, src_height);
    FUNC2(hdc);
    FUNC3(hbitmap);

    return Ok;
}