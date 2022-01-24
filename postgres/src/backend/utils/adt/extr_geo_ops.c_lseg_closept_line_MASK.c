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
typedef  double float8 ;
struct TYPE_4__ {int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ LSEG ;
typedef  int /*<<< orphan*/  LINE ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static float8
FUNC2(Point *result, LSEG *lseg, LINE *line)
{
	float8		dist1,
				dist2;

	if (FUNC1(result, lseg, line))
		return 0.0;

	dist1 = FUNC0(NULL, line, &lseg->p[0]);
	dist2 = FUNC0(NULL, line, &lseg->p[1]);

	if (dist1 < dist2)
	{
		if (result != NULL)
			*result = lseg->p[0];

		return dist1;
	}
	else
	{
		if (result != NULL)
			*result = lseg->p[1];

		return dist2;
	}
}