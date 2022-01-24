#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  hdc; TYPE_2__* image; } ;
struct TYPE_16__ {int left; int top; int right; int bottom; } ;
struct TYPE_13__ {size_t nCount; } ;
struct TYPE_15__ {TYPE_1__ rdh; scalar_t__ Buffer; } ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef  TYPE_3__ RGNDATA ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  PixelFormat ;
typedef  int INT ;
typedef  scalar_t__ HRGN ;
typedef  scalar_t__ GpStatus ;
typedef  TYPE_5__ GpGraphics ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int,TYPE_3__*) ; 
 scalar_t__ ImageTypeBitmap ; 
 scalar_t__ ImageTypeMetafile ; 
 scalar_t__ NotImplemented ; 
 scalar_t__ Ok ; 
 scalar_t__ OutOfMemory ; 
 int /*<<< orphan*/  RGN_AND ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int,int,int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int,int,int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_5__*,scalar_t__*) ; 
 TYPE_3__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static GpStatus FUNC13(GpGraphics *graphics, INT dst_x, INT dst_y,
    const BYTE *src, INT src_width, INT src_height, INT src_stride, HRGN hregion, PixelFormat fmt)
{
    GpStatus stat=Ok;

    if (graphics->image && graphics->image->type == ImageTypeBitmap)
    {
        DWORD i;
        int size;
        RGNDATA *rgndata;
        RECT *rects;
        HRGN hrgn, visible_rgn;

        hrgn = FUNC1(dst_x, dst_y, dst_x + src_width, dst_y + src_height);
        if (!hrgn)
            return OutOfMemory;

        stat = FUNC10(graphics, &visible_rgn);
        if (stat != Ok)
        {
            FUNC2(hrgn);
            return stat;
        }

        if (visible_rgn)
        {
            FUNC0(hrgn, hrgn, visible_rgn, RGN_AND);
            FUNC2(visible_rgn);
        }

        if (hregion)
            FUNC0(hrgn, hrgn, hregion, RGN_AND);

        size = FUNC5(hrgn, 0, NULL);

        rgndata = FUNC11(size);
        if (!rgndata)
        {
            FUNC2(hrgn);
            return OutOfMemory;
        }

        FUNC5(hrgn, size, rgndata);

        rects = (RECT*)rgndata->Buffer;

        for (i=0; stat == Ok && i<rgndata->rdh.nCount; i++)
        {
            stat = FUNC8(graphics, rects[i].left, rects[i].top,
                &src[(rects[i].left - dst_x) * 4 + (rects[i].top - dst_y) * src_stride],
                rects[i].right - rects[i].left, rects[i].bottom - rects[i].top,
                src_stride, fmt);
        }

        FUNC12(rgndata);

        FUNC2(hrgn);

        return stat;
    }
    else if (graphics->image && graphics->image->type == ImageTypeMetafile)
    {
        FUNC3("This should not be used for metafiles; fix caller\n");
        return NotImplemented;
    }
    else
    {
        HRGN hrgn;
        int save;

        stat = FUNC10(graphics, &hrgn);

        if (stat != Ok)
            return stat;

        save = FUNC7(graphics->hdc);

        FUNC4(graphics->hdc, hrgn, RGN_COPY);

        if (hregion)
            FUNC4(graphics->hdc, hregion, RGN_AND);

        stat = FUNC9(graphics, dst_x, dst_y, src, src_width,
            src_height, src_stride, fmt);

        FUNC6(graphics->hdc, save);

        FUNC2(hrgn);

        return stat;
    }
}