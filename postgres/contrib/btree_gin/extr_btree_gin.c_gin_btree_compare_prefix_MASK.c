#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_5__ {int /*<<< orphan*/  flinfo; } ;
struct TYPE_4__ {int strategy; int /*<<< orphan*/  datum; int /*<<< orphan*/  typecmp; } ;
typedef  TYPE_1__ QueryInfo ;
typedef  TYPE_2__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  BTEqualStrategyNumber 132 
#define  BTGreaterEqualStrategyNumber 131 
#define  BTGreaterStrategyNumber 130 
#define  BTLessEqualStrategyNumber 129 
#define  BTLessStrategyNumber 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static Datum
FUNC7(FunctionCallInfo fcinfo)
{
	Datum		a = FUNC2(0);
	Datum		b = FUNC2(1);
	QueryInfo  *data = (QueryInfo *) FUNC3(3);
	int32		res,
				cmp;

	cmp = FUNC1(FUNC0(
												 data->typecmp,
												 fcinfo->flinfo,
												 FUNC4(),
												 (data->strategy == BTLessStrategyNumber ||
												  data->strategy == BTLessEqualStrategyNumber)
												 ? data->datum : a,
												 b));

	switch (data->strategy)
	{
		case BTLessStrategyNumber:
			/* If original datum > indexed one then return match */
			if (cmp > 0)
				res = 0;
			else
				res = 1;
			break;
		case BTLessEqualStrategyNumber:
			/* The same except equality */
			if (cmp >= 0)
				res = 0;
			else
				res = 1;
			break;
		case BTEqualStrategyNumber:
			if (cmp != 0)
				res = 1;
			else
				res = 0;
			break;
		case BTGreaterEqualStrategyNumber:
			/* If original datum <= indexed one then return match */
			if (cmp <= 0)
				res = 0;
			else
				res = 1;
			break;
		case BTGreaterStrategyNumber:
			/* If original datum <= indexed one then return match */
			/* If original datum == indexed one then continue scan */
			if (cmp < 0)
				res = 0;
			else if (cmp == 0)
				res = -1;
			else
				res = 1;
			break;
		default:
			FUNC6(ERROR, "unrecognized strategy number: %d",
				 data->strategy);
			res = 0;
	}

	FUNC5(res);
}