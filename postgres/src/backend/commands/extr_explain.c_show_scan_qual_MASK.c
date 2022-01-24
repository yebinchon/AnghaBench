#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ verbose; } ;
struct TYPE_7__ {int /*<<< orphan*/  plan; } ;
typedef  TYPE_1__ PlanState ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ ExplainState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubqueryScan ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(List *qual, const char *qlabel,
			   PlanState *planstate, List *ancestors,
			   ExplainState *es)
{
	bool		useprefix;

	useprefix = (FUNC0(planstate->plan, SubqueryScan) ||es->verbose);
	FUNC1(qual, qlabel, planstate, ancestors, useprefix, es);
}