#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ndims; scalar_t__ colname; int /*<<< orphan*/ * sizes; } ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ PopulateArrayContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(PopulateArrayContext *ctx, int ndim)
{
	if (ndim <= 0)
	{
		if (ctx->colname)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC5("expected JSON array"),
					 FUNC4("See the value of key \"%s\".", ctx->colname)));
		else
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC5("expected JSON array")));
	}
	else
	{
		StringInfoData indices;
		int			i;

		FUNC6(&indices);

		FUNC0(ctx->ndims > 0 && ndim < ctx->ndims);

		for (i = 0; i < ndim; i++)
			FUNC1(&indices, "[%d]", ctx->sizes[i]);

		if (ctx->colname)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC5("expected JSON array"),
					 FUNC4("See the array element %s of key \"%s\".",
							 indices.data, ctx->colname)));
		else
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC5("expected JSON array"),
					 FUNC4("See the array element %s.",
							 indices.data)));
	}
}