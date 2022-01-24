#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  boolean; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ val; } ;
typedef  TYPE_2__ JsonbValue ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  TYPE_3__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPath ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*,int) ; 
 scalar_t__ jbvBool ; 
 scalar_t__ jbvNull ; 

__attribute__((used)) static Datum
FUNC13(FunctionCallInfo fcinfo, bool tz)
{
	Jsonb	   *jb = FUNC4(0);
	JsonPath   *jp = FUNC5(1);
	JsonValueList found = {0};
	Jsonb	   *vars = NULL;
	bool		silent = true;

	if (FUNC6() == 4)
	{
		vars = FUNC4(2);
		silent = FUNC3(3);
	}

	(void) FUNC12(jp, vars, jb, !silent, &found, tz);

	FUNC2(jb, 0);
	FUNC2(jp, 1);

	if (FUNC1(&found) == 1)
	{
		JsonbValue *jbv = FUNC0(&found);

		if (jbv->type == jbvBool)
			FUNC7(jbv->val.boolean);

		if (jbv->type == jbvNull)
			FUNC8();
	}

	if (!silent)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED),
				 FUNC11("single boolean result is expected")));

	FUNC8();
}