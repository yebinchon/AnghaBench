#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Jsonb ;
typedef  scalar_t__ JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPath ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ jperOk ; 

__attribute__((used)) static Datum
FUNC9(FunctionCallInfo fcinfo, bool tz)
{
	Jsonb	   *jb = FUNC2(0);
	JsonPath   *jp = FUNC3(1);
	JsonPathExecResult res;
	Jsonb	   *vars = NULL;
	bool		silent = true;

	if (FUNC4() == 4)
	{
		vars = FUNC2(2);
		silent = FUNC1(3);
	}

	res = FUNC7(jp, vars, jb, !silent, NULL, tz);

	FUNC0(jb, 0);
	FUNC0(jp, 1);

	if (FUNC8(res))
		FUNC6();

	FUNC5(res == jperOk);
}