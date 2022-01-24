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
struct TYPE_8__ {int /*<<< orphan*/ * freelist; } ;
struct TYPE_7__ {size_t npages; int /*<<< orphan*/  prev; int /*<<< orphan*/  next; int /*<<< orphan*/  magic; } ;
typedef  size_t Size ;
typedef  TYPE_1__ FreePageSpanLeader ;
typedef  TYPE_2__ FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_NUM_FREELISTS ; 
 int /*<<< orphan*/  FREE_PAGE_SPAN_LEADER_MAGIC ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,size_t) ; 
 char* FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(FreePageManager *fpm, Size first_page, Size npages)
{
	char	   *base = FUNC2(fpm);
	Size		f = FUNC0(npages, FPM_NUM_FREELISTS) - 1;
	FreePageSpanLeader *head = FUNC3(base, fpm->freelist[f]);
	FreePageSpanLeader *span;

	span = (FreePageSpanLeader *) FUNC1(base, first_page);
	span->magic = FREE_PAGE_SPAN_LEADER_MAGIC;
	span->npages = npages;
	FUNC4(base, span->next, head);
	FUNC4(base, span->prev, (FreePageSpanLeader *) NULL);
	if (head != NULL)
		FUNC4(base, head->prev, span);
	FUNC4(base, fpm->freelist[f], span);
}