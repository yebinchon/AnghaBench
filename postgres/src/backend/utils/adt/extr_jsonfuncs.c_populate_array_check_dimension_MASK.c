#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* sizes; int* dims; } ;
typedef  TYPE_1__ PopulateArrayContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(PopulateArrayContext *ctx, int ndim)
{
	int			dim = ctx->sizes[ndim]; /* current dimension counter */

	if (ctx->dims[ndim] == -1)
		ctx->dims[ndim] = dim;	/* assign dimension if not yet known */
	else if (ctx->dims[ndim] != dim)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("malformed JSON array"),
				 FUNC2("Multidimensional arrays must have "
						   "sub-arrays with matching dimensions.")));

	/* reset the current array dimension size counter */
	ctx->sizes[ndim] = 0;

	/* increment the parent dimension counter if it is a nested sub-array */
	if (ndim > 0)
		ctx->sizes[ndim - 1]++;
}