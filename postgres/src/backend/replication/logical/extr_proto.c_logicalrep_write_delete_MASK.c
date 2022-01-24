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
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relreplident; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ REPLICA_IDENTITY_DEFAULT ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 scalar_t__ REPLICA_IDENTITY_INDEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(StringInfo out, Relation rel, HeapTuple oldtuple)
{
	FUNC0(rel->rd_rel->relreplident == REPLICA_IDENTITY_DEFAULT ||
		   rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL ||
		   rel->rd_rel->relreplident == REPLICA_IDENTITY_INDEX);

	FUNC3(out, 'D');		/* action DELETE */

	/* use Oid as relation identifier */
	FUNC4(out, FUNC1(rel));

	if (rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL)
		FUNC3(out, 'O');	/* old tuple follows */
	else
		FUNC3(out, 'K');	/* old key follows */

	FUNC2(out, rel, oldtuple);
}