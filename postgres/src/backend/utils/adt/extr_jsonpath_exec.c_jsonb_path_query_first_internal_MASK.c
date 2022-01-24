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
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  TYPE_1__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPath ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 

__attribute__((used)) static Datum
FUNC9(FunctionCallInfo fcinfo, bool tz)
{
	Jsonb	   *jb = FUNC4(0);
	JsonPath   *jp = FUNC5(1);
	JsonValueList found = {0};
	Jsonb	   *vars = FUNC4(2);
	bool		silent = FUNC3(3);

	(void) FUNC8(jp, vars, jb, !silent, &found, tz);

	if (FUNC1(&found) >= 1)
		FUNC6(FUNC2(FUNC0(&found)));
	else
		FUNC7();
}