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
struct TYPE_4__ {scalar_t__ image_type; int /*<<< orphan*/ * clip; scalar_t__ image; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  int /*<<< orphan*/  GpRectF ;
typedef  TYPE_1__ GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeIntersect ; 
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ ImageTypeMetafile ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GpStatus FUNC5(GpGraphics *graphics, GpRegion *rgn)
{
    GpStatus stat;
    GpRectF rectf;
    GpRegion* tmp;

    /* Ignore graphics image bounds for metafiles */
    if (graphics->image && graphics->image_type == ImageTypeMetafile)
        return FUNC1(rgn, graphics->clip, CombineModeReplace);

    if((stat = FUNC4(graphics, &rectf)) != Ok)
        return stat;

    if((stat = FUNC2(&tmp)) != Ok)
        return stat;

    if((stat = FUNC0(tmp, &rectf, CombineModeReplace)) != Ok)
        goto end;

    if((stat = FUNC1(tmp, graphics->clip, CombineModeIntersect)) != Ok)
        goto end;

    stat = FUNC1(rgn, tmp, CombineModeReplace);

end:
    FUNC3(tmp);
    return stat;
}