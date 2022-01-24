#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sem ;
struct TYPE_9__ {int /*<<< orphan*/  scalar; int /*<<< orphan*/  array_element_end; int /*<<< orphan*/  array_element_start; int /*<<< orphan*/  array_end; int /*<<< orphan*/  object_start; void* semstate; } ;
struct TYPE_8__ {scalar_t__ ndims; scalar_t__ dims; } ;
struct TYPE_7__ {int /*<<< orphan*/  lex; TYPE_2__* ctx; } ;
typedef  TYPE_1__ PopulateArrayState ;
typedef  TYPE_2__ PopulateArrayContext ;
typedef  TYPE_3__ JsonSemAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  populate_array_array_end ; 
 int /*<<< orphan*/  populate_array_element_end ; 
 int /*<<< orphan*/  populate_array_element_start ; 
 int /*<<< orphan*/  populate_array_object_start ; 
 int /*<<< orphan*/  populate_array_scalar ; 

__attribute__((used)) static void
FUNC5(PopulateArrayContext *ctx, char *json, int len)
{
	PopulateArrayState state;
	JsonSemAction sem;

	state.lex = FUNC1(json, len, true);
	state.ctx = ctx;

	FUNC2(&sem, 0, sizeof(sem));
	sem.semstate = (void *) &state;
	sem.object_start = populate_array_object_start;
	sem.array_end = populate_array_array_end;
	sem.array_element_start = populate_array_element_start;
	sem.array_element_end = populate_array_element_end;
	sem.scalar = populate_array_scalar;

	FUNC4(state.lex, &sem);

	/* number of dimensions should be already known */
	FUNC0(ctx->ndims > 0 && ctx->dims);

	FUNC3(state.lex);
}