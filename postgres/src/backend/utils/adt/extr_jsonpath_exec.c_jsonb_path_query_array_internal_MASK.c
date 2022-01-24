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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  TYPE_1__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPath ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static Datum
FUNC7(FunctionCallInfo fcinfo, bool tz)
{
	Jsonb	   *jb = FUNC2(0);
	JsonPath   *jp = FUNC3(1);
	JsonValueList found = {0};
	Jsonb	   *vars = FUNC2(2);
	bool		silent = FUNC1(3);

	(void) FUNC5(jp, vars, jb, !silent, &found, tz);

	FUNC4(FUNC0(FUNC6(&found)));
}