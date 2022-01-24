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
typedef  int /*<<< orphan*/  NDBOX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC4(NDBOX *cube)
{
	int			i;

	if (FUNC1(cube))
		return true;

	/*
	 * Even if the point-flag is not set, all the lower-left coordinates might
	 * match the upper-right coordinates, so that the value is in fact a
	 * point. Such values don't arise with current code - the point flag is
	 * always set if appropriate - but they might be present on-disk in
	 * clusters upgraded from pre-9.4 versions.
	 */
	for (i = 0; i < FUNC0(cube); i++)
	{
		if (FUNC2(cube, i) != FUNC3(cube, i))
			return false;
	}
	return true;
}