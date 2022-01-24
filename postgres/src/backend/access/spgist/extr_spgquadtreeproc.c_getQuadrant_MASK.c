#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int16 ;
typedef  int /*<<< orphan*/  Point ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  point_above ; 
 int /*<<< orphan*/  point_below ; 
 int /*<<< orphan*/  point_horiz ; 
 int /*<<< orphan*/  point_left ; 
 int /*<<< orphan*/  point_right ; 
 int /*<<< orphan*/  point_vert ; 

__attribute__((used)) static int16
FUNC2(Point *centroid, Point *tst)
{
	if ((FUNC0(point_above, tst, centroid) ||
		 FUNC0(point_horiz, tst, centroid)) &&
		(FUNC0(point_right, tst, centroid) ||
		 FUNC0(point_vert, tst, centroid)))
		return 1;

	if (FUNC0(point_below, tst, centroid) &&
		(FUNC0(point_right, tst, centroid) ||
		 FUNC0(point_vert, tst, centroid)))
		return 2;

	if ((FUNC0(point_below, tst, centroid) ||
		 FUNC0(point_horiz, tst, centroid)) &&
		FUNC0(point_left, tst, centroid))
		return 3;

	if (FUNC0(point_above, tst, centroid) &&
		FUNC0(point_left, tst, centroid))
		return 4;

	FUNC1(ERROR, "getQuadrant: impossible case");
	return 0;
}