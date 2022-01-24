#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* jsonb; } ;
struct TYPE_20__ {int is_json; TYPE_3__ val; } ;
struct TYPE_15__ {int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {TYPE_1__ binary; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__ val; } ;
struct TYPE_18__ {int ndims; scalar_t__ dims; } ;
typedef  TYPE_4__ PopulateArrayContext ;
typedef  TYPE_5__ JsonbValue ;
typedef  scalar_t__ JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;
typedef  int /*<<< orphan*/  JsonbContainer ;
typedef  TYPE_6__ JsValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,TYPE_5__*,int) ; 
 scalar_t__ WJB_BEGIN_ARRAY ; 
 scalar_t__ WJB_DONE ; 
 scalar_t__ WJB_ELEM ; 
 scalar_t__ WJB_END_ARRAY ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ jbvBinary ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC10(PopulateArrayContext *ctx, /* context */
						 JsonbValue *jbv,	/* jsonb sub-array */
						 int ndim)	/* current dimension */
{
	JsonbContainer *jbc = jbv->val.binary.data;
	JsonbIterator *it;
	JsonbIteratorToken tok;
	JsonbValue	val;
	JsValue		jsv;

	FUNC5();

	if (jbv->type != jbvBinary || !FUNC1(jbc))
		FUNC9(ctx, ndim - 1);

	FUNC0(!FUNC2(jbc));

	it = FUNC3(jbc);

	tok = FUNC4(&it, &val, true);
	FUNC0(tok == WJB_BEGIN_ARRAY);

	tok = FUNC4(&it, &val, true);

	/*
	 * If the number of dimensions is not yet known and we have found end of
	 * the array, or the first child element is not an array, then assign the
	 * number of dimensions now.
	 */
	if (ctx->ndims <= 0 &&
		(tok == WJB_END_ARRAY ||
		 (tok == WJB_ELEM &&
		  (val.type != jbvBinary ||
		   !FUNC1(val.val.binary.data)))))
		FUNC6(ctx, ndim);

	jsv.is_json = false;
	jsv.val.jsonb = &val;

	/* process all the array elements */
	while (tok == WJB_ELEM)
	{
		/*
		 * Recurse only if the dimensions of dimensions is still unknown or if
		 * it is not the innermost dimension.
		 */
		if (ctx->ndims > 0 && ndim >= ctx->ndims)
			FUNC8(ctx, ndim, &jsv);
		else
		{
			/* populate child sub-array */
			FUNC10(ctx, &val, ndim + 1);

			/* number of dimensions should be already known */
			FUNC0(ctx->ndims > 0 && ctx->dims);

			FUNC7(ctx, ndim);
		}

		tok = FUNC4(&it, &val, true);
	}

	FUNC0(tok == WJB_END_ARRAY);

	/* free iterator, iterating until WJB_DONE */
	tok = FUNC4(&it, &val, true);
	FUNC0(tok == WJB_DONE && !it);
}