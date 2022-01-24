#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  type; } ;
struct TYPE_27__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_25__ {int /*<<< orphan*/  numeric; } ;
struct TYPE_26__ {TYPE_1__ val; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  Numeric ;
typedef  TYPE_2__ JsonbValue ;
typedef  TYPE_3__ JsonValueList ;
typedef  TYPE_4__ JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;
typedef  int /*<<< orphan*/  (* BinaryArithmFunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,TYPE_2__*,TYPE_3__*,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jbvNumeric ; 
 int /*<<< orphan*/  jperError ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jperOk ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (int) ; 

__attribute__((used)) static JsonPathExecResult
FUNC16(JsonPathExecContext *cxt, JsonPathItem *jsp,
						JsonbValue *jb, BinaryArithmFunc func,
						JsonValueList *found)
{
	JsonPathExecResult jper;
	JsonPathItem elem;
	JsonValueList lseq = {0};
	JsonValueList rseq = {0};
	JsonbValue *lval;
	JsonbValue *rval;
	Numeric		res;

	FUNC10(jsp, &elem);

	/*
	 * XXX: By standard only operands of multiplicative expressions are
	 * unwrapped.  We extend it to other binary arithmetic expressions too.
	 */
	jper = FUNC6(cxt, &elem, jb, true, &lseq);
	if (FUNC9(jper))
		return jper;

	FUNC12(jsp, &elem);

	jper = FUNC6(cxt, &elem, jb, true, &rseq);
	if (FUNC9(jper))
		return jper;

	if (FUNC1(&lseq) != 1 ||
		!(lval = FUNC8(FUNC0(&lseq), jbvNumeric)))
		FUNC2(FUNC3(ERROR,
							 (FUNC4(ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED),
							  FUNC5("left operand of jsonpath operator %s is not a single numeric value",
									 FUNC13(jsp->type)))));

	if (FUNC1(&rseq) != 1 ||
		!(rval = FUNC8(FUNC0(&rseq), jbvNumeric)))
		FUNC2(FUNC3(ERROR,
							 (FUNC4(ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED),
							  FUNC5("right operand of jsonpath operator %s is not a single numeric value",
									 FUNC13(jsp->type)))));

	if (FUNC14(cxt))
	{
		res = func(lval->val.numeric, rval->val.numeric, NULL);
	}
	else
	{
		bool		error = false;

		res = func(lval->val.numeric, rval->val.numeric, &error);

		if (error)
			return jperError;
	}

	if (!FUNC11(jsp, &elem) && !found)
		return jperOk;

	lval = FUNC15(sizeof(*lval));
	lval->type = jbvNumeric;
	lval->val.numeric = res;

	return FUNC7(cxt, jsp, &elem, lval, found, false);
}