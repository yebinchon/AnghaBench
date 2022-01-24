#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  btree_recycle_count; int /*<<< orphan*/  btree_recycle; } ;
struct TYPE_8__ {int /*<<< orphan*/  prev; int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ FreePageSpanLeader ;
typedef  TYPE_2__ FreePageManager ;
typedef  int /*<<< orphan*/  FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static FreePageBtree *
FUNC6(FreePageManager *fpm)
{
	char	   *base = FUNC2(fpm);
	FreePageSpanLeader *victim = FUNC3(base, fpm->btree_recycle);
	FreePageSpanLeader *newhead;

	FUNC0(victim != NULL);
	newhead = FUNC3(base, victim->next);
	if (newhead != NULL)
		FUNC4(newhead->prev, victim->prev);
	FUNC5(base, fpm->btree_recycle, newhead);
	FUNC0(FUNC1(base, victim));
	fpm->btree_recycle_count--;
	return (FreePageBtree *) victim;
}