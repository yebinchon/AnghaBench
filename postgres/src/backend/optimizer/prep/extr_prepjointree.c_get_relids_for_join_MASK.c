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
struct TYPE_3__ {scalar_t__ jointree; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

Relids
FUNC3(Query *query, int joinrelid)
{
	Node	   *jtnode;

	jtnode = FUNC1((Node *) query->jointree,
										joinrelid);
	if (!jtnode)
		FUNC0(ERROR, "could not find join node %d", joinrelid);
	return FUNC2(jtnode, false);
}