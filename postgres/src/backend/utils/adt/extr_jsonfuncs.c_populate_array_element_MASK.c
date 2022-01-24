#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * sizes; int /*<<< orphan*/  acxt; TYPE_1__* aio; int /*<<< orphan*/  astate; int /*<<< orphan*/  mcxt; } ;
struct TYPE_4__ {int /*<<< orphan*/  element_type; int /*<<< orphan*/  element_typmod; int /*<<< orphan*/  element_info; } ;
typedef  TYPE_2__ PopulateArrayContext ;
typedef  int /*<<< orphan*/  JsValue ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC4(PopulateArrayContext *ctx, int ndim, JsValue *jsv)
{
	Datum		element;
	bool		element_isnull;

	/* populate the array element */
	element = FUNC3(ctx->aio->element_info,
									ctx->aio->element_type,
									ctx->aio->element_typmod,
									NULL, ctx->mcxt, FUNC1(NULL),
									jsv, &element_isnull);

	FUNC2(ctx->astate, element, element_isnull,
					 ctx->aio->element_type, ctx->acxt);

	FUNC0(ndim > 0);
	ctx->sizes[ndim - 1]++;		/* increment current dimension counter */
}