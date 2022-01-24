#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fn_strict; } ;
struct TYPE_4__ {int /*<<< orphan*/ * supportCollation; TYPE_3__* penaltyFn; } ;
typedef  TYPE_1__ GISTSTATE ;
typedef  float GISTENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 float FUNC2 () ; 
 scalar_t__ FUNC3 (float) ; 

float
FUNC4(GISTSTATE *giststate, int attno,
			GISTENTRY *orig, bool isNullOrig,
			GISTENTRY *add, bool isNullAdd)
{
	float		penalty = 0.0;

	if (giststate->penaltyFn[attno].fn_strict == false ||
		(isNullOrig == false && isNullAdd == false))
	{
		FUNC0(&giststate->penaltyFn[attno],
						  giststate->supportCollation[attno],
						  FUNC1(orig),
						  FUNC1(add),
						  FUNC1(&penalty));
		/* disallow negative or NaN penalty */
		if (FUNC3(penalty) || penalty < 0.0)
			penalty = 0.0;
	}
	else if (isNullOrig && isNullAdd)
		penalty = 0.0;
	else
	{
		/* try to prevent mixing null and non-null values */
		penalty = FUNC2();
	}

	return penalty;
}