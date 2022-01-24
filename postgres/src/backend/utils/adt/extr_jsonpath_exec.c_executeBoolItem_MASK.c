#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_27__ {int /*<<< orphan*/  expr; } ;
struct TYPE_28__ {TYPE_1__ like_regex; } ;
struct TYPE_30__ {int type; TYPE_2__ content; int /*<<< orphan*/  base; } ;
struct TYPE_29__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_3__ JsonValueList ;
typedef  TYPE_4__ JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  TYPE_5__ JsonPathExecContext ;
typedef  int /*<<< orphan*/  JsonPathBool ;
typedef  TYPE_5__ JsonLikeRegexContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  executeComparison ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  executeLikeRegex ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  executeStartsWith ; 
 int /*<<< orphan*/  jpbFalse ; 
 int /*<<< orphan*/  jpbTrue ; 
 int /*<<< orphan*/  jpbUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jperOk ; 
#define  jpiAnd 140 
#define  jpiEqual 139 
#define  jpiExists 138 
#define  jpiGreater 137 
#define  jpiGreaterOrEqual 136 
#define  jpiIsUnknown 135 
#define  jpiLess 134 
#define  jpiLessOrEqual 133 
#define  jpiLikeRegex 132 
#define  jpiNot 131 
#define  jpiNotEqual 130 
#define  jpiOr 129 
#define  jpiStartsWith 128 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 

__attribute__((used)) static JsonPathBool
FUNC11(JsonPathExecContext *cxt, JsonPathItem *jsp,
				JsonbValue *jb, bool canHaveNext)
{
	JsonPathItem larg;
	JsonPathItem rarg;
	JsonPathBool res;
	JsonPathBool res2;

	if (!canHaveNext && FUNC8(jsp))
		FUNC1(ERROR, "boolean jsonpath item cannot have next item");

	switch (jsp->type)
	{
		case jpiAnd:
			FUNC6(jsp, &larg);
			res = FUNC11(cxt, &larg, jb, false);

			if (res == jpbFalse)
				return jpbFalse;

			/*
			 * SQL/JSON says that we should check second arg in case of
			 * jperError
			 */

			FUNC7(jsp, &rarg);
			res2 = FUNC11(cxt, &rarg, jb, false);

			return res2 == jpbTrue ? res : res2;

		case jpiOr:
			FUNC6(jsp, &larg);
			res = FUNC11(cxt, &larg, jb, false);

			if (res == jpbTrue)
				return jpbTrue;

			FUNC7(jsp, &rarg);
			res2 = FUNC11(cxt, &rarg, jb, false);

			return res2 == jpbFalse ? res : res2;

		case jpiNot:
			FUNC5(jsp, &larg);

			res = FUNC11(cxt, &larg, jb, false);

			if (res == jpbUnknown)
				return jpbUnknown;

			return res == jpbTrue ? jpbFalse : jpbTrue;

		case jpiIsUnknown:
			FUNC5(jsp, &larg);
			res = FUNC11(cxt, &larg, jb, false);
			return res == jpbUnknown ? jpbTrue : jpbFalse;

		case jpiEqual:
		case jpiNotEqual:
		case jpiLess:
		case jpiGreater:
		case jpiLessOrEqual:
		case jpiGreaterOrEqual:
			FUNC6(jsp, &larg);
			FUNC7(jsp, &rarg);
			return FUNC3(cxt, jsp, &larg, &rarg, jb, true,
									executeComparison, cxt);

		case jpiStartsWith:		/* 'whole STARTS WITH initial' */
			FUNC6(jsp, &larg);	/* 'whole' */
			FUNC7(jsp, &rarg); /* 'initial' */
			return FUNC3(cxt, jsp, &larg, &rarg, jb, false,
									executeStartsWith, NULL);

		case jpiLikeRegex:		/* 'expr LIKE_REGEX pattern FLAGS flags' */
			{
				/*
				 * 'expr' is a sequence-returning expression.  'pattern' is a
				 * regex string literal.  SQL/JSON standard requires XQuery
				 * regexes, but we use Postgres regexes here.  'flags' is a
				 * string literal converted to integer flags at compile-time.
				 */
				JsonLikeRegexContext lrcxt = {0};

				FUNC9(&larg, jsp->base,
								jsp->content.like_regex.expr);

				return FUNC3(cxt, jsp, &larg, NULL, jb, false,
										executeLikeRegex, &lrcxt);
			}

		case jpiExists:
			FUNC5(jsp, &larg);

			if (FUNC10(cxt))
			{
				/*
				 * In strict mode we must get a complete list of values to
				 * check that there are no errors at all.
				 */
				JsonValueList vals = {0};
				JsonPathExecResult res =
				FUNC2(cxt, &larg, jb,
												  false, &vals);

				if (FUNC4(res))
					return jpbUnknown;

				return FUNC0(&vals) ? jpbFalse : jpbTrue;
			}
			else
			{
				JsonPathExecResult res =
				FUNC2(cxt, &larg, jb,
												  false, NULL);

				if (FUNC4(res))
					return jpbUnknown;

				return res == jperOk ? jpbTrue : jpbFalse;
			}

		default:
			FUNC1(ERROR, "invalid boolean jsonpath item type: %d", jsp->type);
			return jpbUnknown;
	}
}