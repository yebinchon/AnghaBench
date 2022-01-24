#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ gdi_clip; int /*<<< orphan*/  clip; } ;
typedef  scalar_t__ HRGN ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  int /*<<< orphan*/  GpMatrix ;
typedef  TYPE_1__ GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CoordinateSpaceDevice ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  RGN_AND ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  WineCoordinateSpaceGdiDevice ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GpStatus FUNC8(GpGraphics *graphics, HRGN *hrgn)
{
    GpRegion *rgn;
    GpMatrix transform;
    GpStatus stat;
    BOOL identity;

    stat = FUNC7(graphics, WineCoordinateSpaceGdiDevice, CoordinateSpaceDevice, &transform);

    if (stat == Ok)
        stat = FUNC5(&transform, &identity);

    if (stat == Ok)
        stat = FUNC2(graphics->clip, &rgn);

    if (stat == Ok)
    {
        if (!identity)
            stat = FUNC6(rgn, &transform);

        if (stat == Ok)
            stat = FUNC4(rgn, NULL, hrgn);

        FUNC3(rgn);
    }

    if (stat == Ok && graphics->gdi_clip)
    {
        if (*hrgn)
            FUNC0(*hrgn, *hrgn, graphics->gdi_clip, RGN_AND);
        else
        {
            *hrgn = FUNC1(0,0,0,0);
            FUNC0(*hrgn, graphics->gdi_clip, graphics->gdi_clip, RGN_COPY);
        }
    }

    return stat;
}