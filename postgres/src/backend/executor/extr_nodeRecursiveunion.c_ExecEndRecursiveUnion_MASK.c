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
struct TYPE_5__ {scalar_t__ tableContext; scalar_t__ tempContext; int /*<<< orphan*/  intermediate_table; int /*<<< orphan*/  working_table; } ;
typedef  TYPE_1__ RecursiveUnionState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(RecursiveUnionState *node)
{
	/* Release tuplestores */
	FUNC4(node->working_table);
	FUNC4(node->intermediate_table);

	/* free subsidiary stuff including hashtable */
	if (node->tempContext)
		FUNC1(node->tempContext);
	if (node->tableContext)
		FUNC1(node->tableContext);

	/*
	 * close down subplans
	 */
	FUNC0(FUNC3(node));
	FUNC0(FUNC2(node));
}