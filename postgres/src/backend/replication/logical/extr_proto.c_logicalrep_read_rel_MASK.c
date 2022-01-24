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
struct TYPE_5__ {int /*<<< orphan*/  replident; void* relname; void* nspname; int /*<<< orphan*/  remoteid; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ LogicalRepRelation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

LogicalRepRelation *
FUNC7(StringInfo in)
{
	LogicalRepRelation *rel = FUNC2(sizeof(LogicalRepRelation));

	rel->remoteid = FUNC4(in, 4);

	/* Read relation name from stream */
	rel->nspname = FUNC6(FUNC1(in));
	rel->relname = FUNC6(FUNC5(in));

	/* Read the replica identity. */
	rel->replident = FUNC3(in);

	/* Get attribute description */
	FUNC0(in, rel);

	return rel;
}