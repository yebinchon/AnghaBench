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
struct TYPE_3__ {int size; int /*<<< orphan*/  string_length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ Pool ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Chromosome ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,double) ; 

void
FUNC2(PlannerInfo *root, Chromosome *momma, Chromosome *daddy,
			   Pool *pool, double bias)
{
	int			first,
				second;

	first = FUNC1(root, pool->size, bias);
	second = FUNC1(root, pool->size, bias);

	/*
	 * Ensure we have selected different genes, except if pool size is only
	 * one, when we can't.
	 *
	 * This code was observed to hang up in an infinite loop when the
	 * platform's implementation of erand48() was broken.  We now always use
	 * our own version.
	 */
	if (pool->size > 1)
	{
		while (first == second)
			second = FUNC1(root, pool->size, bias);
	}

	FUNC0(root, momma, &pool->data[first], pool->string_length);
	FUNC0(root, daddy, &pool->data[second], pool->string_length);
}