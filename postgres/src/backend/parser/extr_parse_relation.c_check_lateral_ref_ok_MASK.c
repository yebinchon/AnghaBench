#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* p_rte; int /*<<< orphan*/  p_lateral_ok; scalar_t__ p_lateral_only; } ;
struct TYPE_10__ {TYPE_2__* p_target_rangetblentry; } ;
struct TYPE_9__ {TYPE_1__* eref; } ;
struct TYPE_8__ {char* aliasname; } ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  TYPE_3__ ParseState ;
typedef  TYPE_4__ ParseNamespaceItem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_COLUMN_REFERENCE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC6(ParseState *pstate, ParseNamespaceItem *nsitem,
					 int location)
{
	if (nsitem->p_lateral_only && !nsitem->p_lateral_ok)
	{
		/* SQL:2008 demands this be an error, not an invisible item */
		RangeTblEntry *rte = nsitem->p_rte;
		char	   *refname = rte->eref->aliasname;

		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_COLUMN_REFERENCE),
				 FUNC4("invalid reference to FROM-clause entry for table \"%s\"",
						refname),
				 (rte == pstate->p_target_rangetblentry) ?
				 FUNC3("There is an entry for table \"%s\", but it cannot be referenced from this part of the query.",
						 refname) :
				 FUNC2("The combining JOIN type must be INNER or LEFT for a LATERAL reference."),
				 FUNC5(pstate, location)));
	}
}