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
struct TYPE_3__ {int /*<<< orphan*/  es_query_cxt; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_1__ EState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

ExprState *
FUNC3(List *qual, EState *estate)
{
	ExprState  *result;
	MemoryContext oldcontext;

	oldcontext = FUNC1(estate->es_query_cxt);

	qual = (List *) FUNC2((Expr *) qual);

	result = FUNC0(qual, NULL);

	FUNC1(oldcontext);

	return result;
}