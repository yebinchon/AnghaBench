#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gdRectPtr ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ gdRect ;
typedef  int /*<<< orphan*/  gdImagePtr ;

/* Variables and functions */
 int GD_FALSE ; 
 scalar_t__ GD_TRUE ; 
 int /*<<< orphan*/  FUNC0 (double*,float const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,double*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(gdImagePtr src, const float angle, gdRectPtr bbox)
{
    gdRect src_area;
    double m[6];

    FUNC0(m, angle);
    src_area.x = 0;
    src_area.y = 0;
    src_area.width = FUNC1(src);
    src_area.height = FUNC2(src);
    if (FUNC3(&src_area, m, bbox) != GD_TRUE) {
        return GD_FALSE;
    }

    return GD_TRUE;
}