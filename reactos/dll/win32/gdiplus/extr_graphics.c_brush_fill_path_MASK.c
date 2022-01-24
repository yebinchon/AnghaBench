#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int bt; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdc; } ;
struct TYPE_11__ {int /*<<< orphan*/  color; } ;
struct TYPE_10__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpSolidFill ;
typedef  TYPE_3__ GpGraphics ;
typedef  TYPE_4__ GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  BrushTypeSolidColor 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GenericError ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  NULLREGION ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  OutOfMemory ; 
 int /*<<< orphan*/  RGN_AND ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static GpStatus FUNC10(GpGraphics *graphics, GpBrush *brush)
{
    GpStatus status = Ok;
    switch (brush->bt)
    {
    case BrushTypeSolidColor:
    {
        GpSolidFill *fill = (GpSolidFill*)brush;
        HBITMAP bmp = FUNC0(fill->color);

        if (bmp)
        {
            RECT rc;
            /* partially transparent fill */

            if (!FUNC6(graphics->hdc, RGN_AND))
            {
                status = GenericError;
                FUNC3(bmp);
                break;
            }
            if (FUNC5(graphics->hdc, &rc) != NULLREGION)
            {
                HDC hdc = FUNC1(NULL);

                if (!hdc)
                {
                    status = OutOfMemory;
                    FUNC3(bmp);
                    break;
                }

                FUNC7(hdc, bmp);
                FUNC9(graphics, rc.left, rc.top, rc.right - rc.left, rc.bottom - rc.top,
                                hdc, 0, 0, 1, 1);
                FUNC2(hdc);
            }

            FUNC3(bmp);
            break;
        }
        /* else fall through */
    }
    default:
    {
        HBRUSH gdibrush, old_brush;

        gdibrush = FUNC8(brush);
        if (!gdibrush)
        {
            status = OutOfMemory;
            break;
        }

        old_brush = FUNC7(graphics->hdc, gdibrush);
        FUNC4(graphics->hdc);
        FUNC7(graphics->hdc, old_brush);
        FUNC3(gdibrush);
        break;
    }
    }

    return status;
}