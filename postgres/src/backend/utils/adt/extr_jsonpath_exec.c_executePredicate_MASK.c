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
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonValueListIterator ;
typedef  TYPE_1__ JsonValueList ;
typedef  scalar_t__ (* JsonPathPredicateCallback ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;
typedef  scalar_t__ JsonPathBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 scalar_t__ jpbFalse ; 
 scalar_t__ jpbTrue ; 
 scalar_t__ jpbUnknown ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonPathBool
FUNC5(JsonPathExecContext *cxt, JsonPathItem *pred,
				 JsonPathItem *larg, JsonPathItem *rarg, JsonbValue *jb,
				 bool unwrapRightArg, JsonPathPredicateCallback exec,
				 void *param)
{
	JsonPathExecResult res;
	JsonValueListIterator lseqit;
	JsonValueList lseq = {0};
	JsonValueList rseq = {0};
	JsonbValue *lval;
	bool		error = false;
	bool		found = false;

	/* Left argument is always auto-unwrapped. */
	res = FUNC2(cxt, larg, jb, true, &lseq);
	if (FUNC3(res))
		return jpbUnknown;

	if (rarg)
	{
		/* Right argument is conditionally auto-unwrapped. */
		res = FUNC2(cxt, rarg, jb,
												unwrapRightArg, &rseq);
		if (FUNC3(res))
			return jpbUnknown;
	}

	FUNC0(&lseq, &lseqit);
	while ((lval = FUNC1(&lseq, &lseqit)))
	{
		JsonValueListIterator rseqit;
		JsonbValue *rval;
		bool		first = true;

		FUNC0(&rseq, &rseqit);
		if (rarg)
			rval = FUNC1(&rseq, &rseqit);
		else
			rval = NULL;

		/* Loop over right arg sequence or do single pass otherwise */
		while (rarg ? (rval != NULL) : first)
		{
			JsonPathBool res = exec(pred, lval, rval, param);

			if (res == jpbUnknown)
			{
				if (FUNC4(cxt))
					return jpbUnknown;

				error = true;
			}
			else if (res == jpbTrue)
			{
				if (!FUNC4(cxt))
					return jpbTrue;

				found = true;
			}

			first = false;
			if (rarg)
				rval = FUNC1(&rseq, &rseqit);
		}
	}

	if (found)					/* possible only in strict mode */
		return jpbTrue;

	if (error)					/* possible only in lax mode */
		return jpbUnknown;

	return jpbFalse;
}