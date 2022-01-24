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
struct TYPE_4__ {scalar_t__ magic; scalar_t__ nargs; int /*<<< orphan*/  argtypes; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_1__* SPIPlanPtr ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int SPI_ERROR_ARGUMENT ; 
 int SPI_ERROR_PARAM ; 
 scalar_t__ _SPI_PLAN_MAGIC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,long) ; 

int
FUNC4(SPIPlanPtr plan,
					 Datum *Values, const char *Nulls,
					 Snapshot snapshot, Snapshot crosscheck_snapshot,
					 bool read_only, bool fire_triggers, long tcount)
{
	int			res;

	if (plan == NULL || plan->magic != _SPI_PLAN_MAGIC || tcount < 0)
		return SPI_ERROR_ARGUMENT;

	if (plan->nargs > 0 && Values == NULL)
		return SPI_ERROR_PARAM;

	res = FUNC0(true);
	if (res < 0)
		return res;

	res = FUNC3(plan,
							FUNC1(plan->nargs, plan->argtypes,
												Values, Nulls),
							snapshot, crosscheck_snapshot,
							read_only, fire_triggers, tcount);

	FUNC2(true);
	return res;
}