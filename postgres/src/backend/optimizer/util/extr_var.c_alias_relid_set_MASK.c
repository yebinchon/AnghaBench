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
struct TYPE_7__ {int /*<<< orphan*/  rtable; } ;
struct TYPE_6__ {scalar_t__ rtekind; } ;
typedef  int /*<<< orphan*/ * Relids ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_2__ Query ;

/* Variables and functions */
 scalar_t__ RTE_JOIN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Relids
FUNC5(Query *query, Relids relids)
{
	Relids		result = NULL;
	int			rtindex;

	rtindex = -1;
	while ((rtindex = FUNC2(relids, rtindex)) >= 0)
	{
		RangeTblEntry *rte = FUNC4(rtindex, query->rtable);

		if (rte->rtekind == RTE_JOIN)
			result = FUNC1(result, FUNC3(query, rtindex));
		else
			result = FUNC0(result, rtindex);
	}
	return result;
}