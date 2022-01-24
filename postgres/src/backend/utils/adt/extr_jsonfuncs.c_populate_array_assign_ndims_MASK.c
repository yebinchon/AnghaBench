#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ndims; int* dims; int /*<<< orphan*/  sizes; } ;
typedef  TYPE_1__ PopulateArrayContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(PopulateArrayContext *ctx, int ndims)
{
	int			i;

	FUNC0(ctx->ndims <= 0);

	if (ndims <= 0)
		FUNC3(ctx, ndims);

	ctx->ndims = ndims;
	ctx->dims = FUNC1(sizeof(int) * ndims);
	ctx->sizes = FUNC2(sizeof(int) * ndims);

	for (i = 0; i < ndims; i++)
		ctx->dims[i] = -1;		/* dimensions are unknown yet */
}