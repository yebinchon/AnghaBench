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
struct TYPE_11__ {scalar_t__ unit; int scale; int /*<<< orphan*/  hdc; int /*<<< orphan*/  xres; int /*<<< orphan*/  worldtrans; } ;
struct TYPE_10__ {scalar_t__ unit; int width; scalar_t__ dash; int* dashes; int /*<<< orphan*/  style; int /*<<< orphan*/  brush; int /*<<< orphan*/  numdashes; } ;
struct TYPE_9__ {double X; double Y; } ;
typedef  int REAL ;
typedef  int /*<<< orphan*/  LOGBRUSH ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  TYPE_1__ GpPointF ;
typedef  TYPE_2__ GpPen ;
typedef  TYPE_3__ GpGraphics ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CoordinateSpaceDevice ; 
 scalar_t__ DashStyleCustom ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int MAX_DASHLEN ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ UnitPixel ; 
 scalar_t__ UnitWorld ; 
 int /*<<< orphan*/  WineCoordinateSpaceGdiDevice ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (double) ; 
 int FUNC12 (int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT FUNC13(GpGraphics *graphics, GpPen *pen)
{
    LOGBRUSH lb;
    HPEN gdipen;
    REAL width;
    INT save_state, i, numdashes;
    GpPointF pt[2];
    DWORD dash_array[MAX_DASHLEN];

    save_state = FUNC3(graphics->hdc);

    FUNC0(graphics->hdc);

    if(pen->unit == UnitPixel){
        width = pen->width;
    }
    else{
        /* Get an estimate for the amount the pen width is affected by the world
         * transform. (This is similar to what some of the wine drivers do.) */
        pt[0].X = 0.0;
        pt[0].Y = 0.0;
        pt[1].X = 1.0;
        pt[1].Y = 1.0;
        FUNC2(&graphics->worldtrans, pt, 2);
        width = FUNC11((pt[1].X - pt[0].X) * (pt[1].X - pt[0].X) +
                     (pt[1].Y - pt[0].Y) * (pt[1].Y - pt[0].Y)) / FUNC11(2.0);

        width *= FUNC12(pen->width, pen->unit == UnitWorld ? graphics->unit : pen->unit, graphics->xres);
        width *= graphics->scale;

        pt[0].X = 0.0;
        pt[0].Y = 0.0;
        pt[1].X = 1.0;
        pt[1].Y = 1.0;
        FUNC9(graphics, WineCoordinateSpaceGdiDevice, CoordinateSpaceDevice, pt, 2);
        width *= FUNC11((pt[1].X - pt[0].X) * (pt[1].X - pt[0].X) +
                      (pt[1].Y - pt[0].Y) * (pt[1].Y - pt[0].Y)) / FUNC11(2.0);
    }

    if(pen->dash == DashStyleCustom){
        numdashes = FUNC10(pen->numdashes, MAX_DASHLEN);

        FUNC5("dashes are: ");
        for(i = 0; i < numdashes; i++){
            dash_array[i] = FUNC8(width * pen->dashes[i]);
            FUNC5("%d, ", dash_array[i]);
        }
        FUNC5("\n and the pen style is %x\n", pen->style);

        FUNC6(pen->brush, &lb);
        gdipen = FUNC1(pen->style, FUNC8(width), &lb,
                              numdashes, dash_array);
        FUNC7(&lb);
    }
    else
    {
        FUNC6(pen->brush, &lb);
        gdipen = FUNC1(pen->style, FUNC8(width), &lb, 0, NULL);
        FUNC7(&lb);
    }

    FUNC4(graphics->hdc, gdipen);

    return save_state;
}