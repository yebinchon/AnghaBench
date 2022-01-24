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
struct TYPE_5__ {int nargs; int /*<<< orphan*/ * parserSetupArg; int /*<<< orphan*/ * parserSetup; int /*<<< orphan*/ * argtypes; int /*<<< orphan*/  cursor_options; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ _SPI_plan ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_OPT_PARALLEL_OK ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
 int SPI_ERROR_ARGUMENT ; 
 int SPI_ERROR_PARAM ; 
 int /*<<< orphan*/  _SPI_PLAN_MAGIC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,long) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(const char *src,
					  int nargs, Oid *argtypes,
					  Datum *Values, const char *Nulls,
					  bool read_only, long tcount)
{
	int			res;
	_SPI_plan	plan;
	ParamListInfo paramLI;

	if (src == NULL || nargs < 0 || tcount < 0)
		return SPI_ERROR_ARGUMENT;

	if (nargs > 0 && (argtypes == NULL || Values == NULL))
		return SPI_ERROR_PARAM;

	res = FUNC0(true);
	if (res < 0)
		return res;

	FUNC5(&plan, 0, sizeof(_SPI_plan));
	plan.magic = _SPI_PLAN_MAGIC;
	plan.cursor_options = CURSOR_OPT_PARALLEL_OK;
	plan.nargs = nargs;
	plan.argtypes = argtypes;
	plan.parserSetup = NULL;
	plan.parserSetupArg = NULL;

	paramLI = FUNC1(nargs, argtypes,
								  Values, Nulls);

	FUNC4(src, &plan);

	res = FUNC3(&plan, paramLI,
							InvalidSnapshot, InvalidSnapshot,
							read_only, true, tcount);

	FUNC2(true);
	return res;
}