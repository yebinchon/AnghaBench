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
struct TYPE_3__ {void* bottom; void* right; void* top; void* left; } ;
typedef  TYPE_1__ RECT ;

/* Variables and functions */
 int Columns ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(
    int		row1,
    int		col1,
    int		row2,
    int		col2)
{
    RECT	rc;

    /*
     * Clear one extra pixel at the far right, for when bold characters have
     * spilled over to the window border.
     * Note: FillRect() excludes right and bottom of rectangle.
     */
    rc.left = FUNC0(col1);
    rc.top = FUNC1(row1);
    rc.right = FUNC0(col2 + 1) + (col2 == Columns - 1);
    rc.bottom = FUNC1(row2 + 1);
    FUNC2(&rc);
}