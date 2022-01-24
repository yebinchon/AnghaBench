#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ serverid; scalar_t__ userid; int useridiscurrent; int /*<<< orphan*/  fdwroutine; } ;
typedef  TYPE_1__ RelOptInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(RelOptInfo *joinrel, RelOptInfo *outer_rel,
						   RelOptInfo *inner_rel)
{
	if (FUNC1(outer_rel->serverid) &&
		inner_rel->serverid == outer_rel->serverid)
	{
		if (inner_rel->userid == outer_rel->userid)
		{
			joinrel->serverid = outer_rel->serverid;
			joinrel->userid = outer_rel->userid;
			joinrel->useridiscurrent = outer_rel->useridiscurrent || inner_rel->useridiscurrent;
			joinrel->fdwroutine = outer_rel->fdwroutine;
		}
		else if (!FUNC1(inner_rel->userid) &&
				 outer_rel->userid == FUNC0())
		{
			joinrel->serverid = outer_rel->serverid;
			joinrel->userid = outer_rel->userid;
			joinrel->useridiscurrent = true;
			joinrel->fdwroutine = outer_rel->fdwroutine;
		}
		else if (!FUNC1(outer_rel->userid) &&
				 inner_rel->userid == FUNC0())
		{
			joinrel->serverid = outer_rel->serverid;
			joinrel->userid = inner_rel->userid;
			joinrel->useridiscurrent = true;
			joinrel->fdwroutine = outer_rel->fdwroutine;
		}
	}
}