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
struct TYPE_3__ {int numParams; int /*<<< orphan*/ * parserSetupArg; int /*<<< orphan*/ * parserSetup; int /*<<< orphan*/ * paramCompileArg; int /*<<< orphan*/ * paramCompile; int /*<<< orphan*/ * paramFetchArg; int /*<<< orphan*/ * paramFetch; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__* ParamListInfo ;
typedef  int /*<<< orphan*/  ParamExternData ;

/* Variables and functions */
 int /*<<< orphan*/  ParamListInfoData ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  params ; 

ParamListInfo
FUNC2(int numParams)
{
	ParamListInfo retval;
	Size		size;

	size = FUNC0(ParamListInfoData, params) +
		numParams * sizeof(ParamExternData);

	retval = (ParamListInfo) FUNC1(size);
	retval->paramFetch = NULL;
	retval->paramFetchArg = NULL;
	retval->paramCompile = NULL;
	retval->paramCompileArg = NULL;
	retval->parserSetup = NULL;
	retval->parserSetupArg = NULL;
	retval->numParams = numParams;

	return retval;
}