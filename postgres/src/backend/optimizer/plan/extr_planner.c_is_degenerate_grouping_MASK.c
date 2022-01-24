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
struct TYPE_5__ {scalar_t__ hasHavingQual; TYPE_1__* parse; } ;
struct TYPE_4__ {scalar_t__ groupClause; int /*<<< orphan*/  hasAggs; scalar_t__ groupingSets; } ;
typedef  TYPE_1__ Query ;
typedef  TYPE_2__ PlannerInfo ;

/* Variables and functions */
 scalar_t__ NIL ; 

__attribute__((used)) static bool
FUNC0(PlannerInfo *root)
{
	Query	   *parse = root->parse;

	return (root->hasHavingQual || parse->groupingSets) &&
		!parse->hasAggs && parse->groupClause == NIL;
}