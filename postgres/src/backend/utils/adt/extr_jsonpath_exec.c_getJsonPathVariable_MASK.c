#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ type; } ;
struct TYPE_19__ {int /*<<< orphan*/  root; } ;
struct TYPE_16__ {char* val; int len; } ;
struct TYPE_17__ {TYPE_1__ string; } ;
struct TYPE_18__ {TYPE_2__ val; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  TYPE_4__ Jsonb ;
typedef  TYPE_5__ JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  JB_FOBJECT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  jbvNull ; 
 int /*<<< orphan*/  jbvString ; 
 scalar_t__ jpiVariable ; 
 char* FUNC6 (TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC10(JsonPathExecContext *cxt, JsonPathItem *variable,
					Jsonb *vars, JsonbValue *value)
{
	char	   *varName;
	int			varNameLength;
	JsonbValue	tmp;
	JsonbValue *v;

	if (!vars)
	{
		value->type = jbvNull;
		return;
	}

	FUNC0(variable->type == jpiVariable);
	varName = FUNC6(variable, &varNameLength);
	tmp.type = jbvString;
	tmp.val.string.val = varName;
	tmp.val.string.len = varNameLength;

	v = FUNC5(&vars->root, JB_FOBJECT, &tmp);

	if (v)
	{
		*value = *v;
		FUNC7(v);
	}
	else
	{
		FUNC2(ERROR,
				(FUNC3(ERRCODE_UNDEFINED_OBJECT),
				 FUNC4("could not find jsonpath variable \"%s\"",
						FUNC8(varName, varNameLength))));
	}

	FUNC1(&tmp, vars);
	FUNC9(cxt, &tmp, 1);
}