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
struct TYPE_5__ {int cursor_options; int nargs; int /*<<< orphan*/ * parserSetupArg; int /*<<< orphan*/ * parserSetup; int /*<<< orphan*/ * argtypes; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ _SPI_plan ;
typedef  int /*<<< orphan*/  Portal ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SPI_result ; 
 int /*<<< orphan*/  _SPI_PLAN_MAGIC ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

Portal
FUNC7(const char *name,
						  const char *src,
						  int nargs, Oid *argtypes,
						  Datum *Values, const char *Nulls,
						  bool read_only, int cursorOptions)
{
	Portal		result;
	_SPI_plan	plan;
	ParamListInfo paramLI;

	if (src == NULL || nargs < 0)
		FUNC5(ERROR, "SPI_cursor_open_with_args called with invalid arguments");

	if (nargs > 0 && (argtypes == NULL || Values == NULL))
		FUNC5(ERROR, "SPI_cursor_open_with_args called with missing parameters");

	SPI_result = FUNC1(true);
	if (SPI_result < 0)
		FUNC5(ERROR, "SPI_cursor_open_with_args called while not connected");

	FUNC6(&plan, 0, sizeof(_SPI_plan));
	plan.magic = _SPI_PLAN_MAGIC;
	plan.cursor_options = cursorOptions;
	plan.nargs = nargs;
	plan.argtypes = argtypes;
	plan.parserSetup = NULL;
	plan.parserSetupArg = NULL;

	/* build transient ParamListInfo in executor context */
	paramLI = FUNC2(nargs, argtypes,
								  Values, Nulls);

	FUNC4(src, &plan);

	/* We needn't copy the plan; SPI_cursor_open_internal will do so */

	result = FUNC0(name, &plan, paramLI, read_only);

	/* And clean up */
	FUNC3(true);

	return result;
}