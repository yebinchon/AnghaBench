#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ Point ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

Point *
FUNC1(Point *pointx, Point *pointy)
{
	Point	   *new_point = (Point *) FUNC0(sizeof(Point));

	new_point->x = pointx->x;
	new_point->y = pointy->y;

	return new_point;
}