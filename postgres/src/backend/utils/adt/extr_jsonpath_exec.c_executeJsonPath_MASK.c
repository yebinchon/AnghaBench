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
struct TYPE_20__ {int header; } ;
struct TYPE_16__ {scalar_t__ id; int /*<<< orphan*/ * jbc; } ;
struct TYPE_19__ {int laxMode; int ignoreStructuralErrors; int lastGeneratedObjectId; int innermostArraySize; int throwErrors; int useTz; TYPE_1__ baseObject; int /*<<< orphan*/ * current; int /*<<< orphan*/ * root; TYPE_2__* vars; } ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/  root; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_2__ Jsonb ;
typedef  TYPE_3__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  TYPE_4__ JsonPathExecContext ;
typedef  TYPE_5__ JsonPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int JSONPATH_LAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jperNotFound ; 
 int /*<<< orphan*/  jperOk ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 

__attribute__((used)) static JsonPathExecResult
FUNC13(JsonPath *path, Jsonb *vars, Jsonb *json, bool throwErrors,
				JsonValueList *result, bool useTz)
{
	JsonPathExecContext cxt;
	JsonPathExecResult res;
	JsonPathItem jsp;
	JsonbValue	jbv;

	FUNC11(&jsp, path);

	if (!FUNC3(&json->root, &jbv))
		FUNC4(&jbv, json);

	if (vars && !FUNC1(&vars->root))
	{
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC8("\"vars\" argument is not an object"),
				 FUNC7("Jsonpath parameters should be encoded as key-value pairs of \"vars\" object.")));
	}

	cxt.vars = vars;
	cxt.laxMode = (path->header & JSONPATH_LAX) != 0;
	cxt.ignoreStructuralErrors = cxt.laxMode;
	cxt.root = &jbv;
	cxt.current = &jbv;
	cxt.baseObject.jbc = NULL;
	cxt.baseObject.id = 0;
	cxt.lastGeneratedObjectId = vars ? 2 : 1;
	cxt.innermostArraySize = -1;
	cxt.throwErrors = throwErrors;
	cxt.useTz = useTz;

	if (FUNC12(&cxt) && !result)
	{
		/*
		 * In strict mode we must get a complete list of values to check that
		 * there are no errors at all.
		 */
		JsonValueList vals = {0};

		res = FUNC9(&cxt, &jsp, &jbv, &vals);

		if (FUNC10(res))
			return res;

		return FUNC2(&vals) ? jperNotFound : jperOk;
	}

	res = FUNC9(&cxt, &jsp, &jbv, result);

	FUNC0(!throwErrors || !FUNC10(res));

	return res;
}