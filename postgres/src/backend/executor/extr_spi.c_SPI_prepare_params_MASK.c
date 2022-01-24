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
struct TYPE_5__ {int cursor_options; void* parserSetupArg; int /*<<< orphan*/  parserSetup; int /*<<< orphan*/ * argtypes; scalar_t__ nargs; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ _SPI_plan ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  int /*<<< orphan*/  ParserSetupHook ;

/* Variables and functions */
 scalar_t__ SPI_ERROR_ARGUMENT ; 
 scalar_t__ SPI_result ; 
 int /*<<< orphan*/  _SPI_PLAN_MAGIC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

SPIPlanPtr
FUNC5(const char *src,
				   ParserSetupHook parserSetup,
				   void *parserSetupArg,
				   int cursorOptions)
{
	_SPI_plan	plan;
	SPIPlanPtr	result;

	if (src == NULL)
	{
		SPI_result = SPI_ERROR_ARGUMENT;
		return NULL;
	}

	SPI_result = FUNC0(true);
	if (SPI_result < 0)
		return NULL;

	FUNC4(&plan, 0, sizeof(_SPI_plan));
	plan.magic = _SPI_PLAN_MAGIC;
	plan.cursor_options = cursorOptions;
	plan.nargs = 0;
	plan.argtypes = NULL;
	plan.parserSetup = parserSetup;
	plan.parserSetupArg = parserSetupArg;

	FUNC3(src, &plan);

	/* copy plan to procedure context */
	result = FUNC2(&plan);

	FUNC1(true);

	return result;
}