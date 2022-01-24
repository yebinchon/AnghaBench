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
struct TYPE_3__ {int /*<<< orphan*/ * supportCollation; int /*<<< orphan*/ * equalFn; } ;
typedef  TYPE_1__ GISTSTATE ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

bool
FUNC2(GISTSTATE *giststate, int attno, Datum a, Datum b)
{
	bool		result;

	FUNC0(&giststate->equalFn[attno],
					  giststate->supportCollation[attno],
					  a, b,
					  FUNC1(&result));
	return result;
}