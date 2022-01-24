#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_9__ {int bt; } ;
struct TYPE_8__ {int /*<<< orphan*/  color; } ;
struct TYPE_7__ {int /*<<< orphan*/  lbHatch; int /*<<< orphan*/  lbColor; void* lbStyle; } ;
typedef  TYPE_1__ LOGBRUSH ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpSolidFill ;
typedef  int /*<<< orphan*/  GpHatch ;
typedef  TYPE_3__ GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* BS_PATTERN ; 
 void* BS_SOLID ; 
#define  BrushTypeHatchFill 129 
#define  BrushTypeSolidColor 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  OutOfMemory ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*) ; 

__attribute__((used)) static GpStatus FUNC4(const GpBrush *brush, LOGBRUSH *lb)
{
    switch (brush->bt)
    {
        case BrushTypeSolidColor:
        {
            const GpSolidFill *sf = (const GpSolidFill *)brush;
            lb->lbStyle = BS_SOLID;
            lb->lbColor = FUNC0(sf->color);
            lb->lbHatch = 0;
            return Ok;
        }

        case BrushTypeHatchFill:
        {
            const GpHatch *hatch = (const GpHatch *)brush;
            HBITMAP hbmp;

            hbmp = FUNC2(hatch);
            if (!hbmp) return OutOfMemory;

            lb->lbStyle = BS_PATTERN;
            lb->lbColor = 0;
            lb->lbHatch = (ULONG_PTR)hbmp;
            return Ok;
        }

        default:
            FUNC1("unhandled brush type %d\n", brush->bt);
            lb->lbStyle = BS_SOLID;
            lb->lbColor = FUNC3(brush);
            lb->lbHatch = 0;
            return Ok;
    }
}