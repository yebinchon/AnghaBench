#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  element_type; } ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  str; } ;
struct TYPE_11__ {int /*<<< orphan*/  jsonb; TYPE_1__ json; } ;
struct TYPE_13__ {TYPE_2__ val; scalar_t__ is_json; } ;
struct TYPE_12__ {char const* colname; int ndims; int* dims; int* sizes; int /*<<< orphan*/  acxt; int /*<<< orphan*/  astate; int /*<<< orphan*/  mcxt; TYPE_5__* aio; } ;
typedef  TYPE_3__ PopulateArrayContext ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_4__ JsValue ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_5__ ArrayIOData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC8(ArrayIOData *aio,
			   const char *colname,
			   MemoryContext mcxt,
			   JsValue *jsv)
{
	PopulateArrayContext ctx;
	Datum		result;
	int		   *lbs;
	int			i;

	ctx.aio = aio;
	ctx.mcxt = mcxt;
	ctx.acxt = CurrentMemoryContext;
	ctx.astate = FUNC1(aio->element_type, ctx.acxt, true);
	ctx.colname = colname;
	ctx.ndims = 0;				/* unknown yet */
	ctx.dims = NULL;
	ctx.sizes = NULL;

	if (jsv->is_json)
		FUNC6(&ctx, jsv->val.json.str,
							jsv->val.json.len >= 0 ? jsv->val.json.len
							: FUNC7(jsv->val.json.str));
	else
	{
		FUNC5(&ctx, jsv->val.jsonb, 1);
		ctx.dims[0] = ctx.sizes[0];
	}

	FUNC0(ctx.ndims > 0);

	lbs = FUNC3(sizeof(int) * ctx.ndims);

	for (i = 0; i < ctx.ndims; i++)
		lbs[i] = 1;

	result = FUNC2(ctx.astate, ctx.ndims, ctx.dims, lbs,
							   ctx.acxt, true);

	FUNC4(ctx.dims);
	FUNC4(ctx.sizes);
	FUNC4(lbs);

	return result;
}