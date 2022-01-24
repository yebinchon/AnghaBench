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
struct TYPE_8__ {int /*<<< orphan*/  btree_recycle_count; int /*<<< orphan*/  btree_recycle; } ;
struct TYPE_7__ {int npages; int /*<<< orphan*/  prev; int /*<<< orphan*/  next; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ FreePageSpanLeader ;
typedef  TYPE_2__ FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_PAGE_SPAN_LEADER_MAGIC ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(FreePageManager *fpm, Size pageno)
{
	char	   *base = FUNC1(fpm);
	FreePageSpanLeader *head = FUNC2(base, fpm->btree_recycle);
	FreePageSpanLeader *span;

	span = (FreePageSpanLeader *) FUNC0(base, pageno);
	span->magic = FREE_PAGE_SPAN_LEADER_MAGIC;
	span->npages = 1;
	FUNC3(base, span->next, head);
	FUNC3(base, span->prev, (FreePageSpanLeader *) NULL);
	if (head != NULL)
		FUNC3(base, head->prev, span);
	FUNC3(base, fpm->btree_recycle, span);
	fpm->btree_recycle_count++;
}