#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ LSEG ;
typedef  int /*<<< orphan*/  LINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC4(Point *result, LSEG *l1, LSEG *l2)
{
	Point		interpt;
	LINE		tmp;

	FUNC0(&tmp, &l2->p[0], FUNC3(l2));
	if (!FUNC2(&interpt, l1, &tmp))
		return false;

	/*
	 * If the line intersection point isn't within l2, there is no valid
	 * segment intersection point at all.
	 */
	if (!FUNC1(l2, &interpt))
		return false;

	if (result != NULL)
		*result = interpt;

	return true;
}