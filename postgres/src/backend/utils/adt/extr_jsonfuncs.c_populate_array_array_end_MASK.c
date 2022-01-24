#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int ndims; } ;
struct TYPE_7__ {TYPE_1__* lex; TYPE_3__* ctx; } ;
struct TYPE_6__ {int lex_level; } ;
typedef  TYPE_2__ PopulateArrayState ;
typedef  TYPE_3__ PopulateArrayContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC2(void *_state)
{
	PopulateArrayState *state = (PopulateArrayState *) _state;
	PopulateArrayContext *ctx = state->ctx;
	int			ndim = state->lex->lex_level;

	if (ctx->ndims <= 0)
		FUNC0(ctx, ndim + 1);

	if (ndim < ctx->ndims)
		FUNC1(ctx, ndim);
}