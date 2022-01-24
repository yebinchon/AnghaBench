#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t relptr_off; } ;
struct TYPE_10__ {TYPE_3__* freelist; } ;
struct TYPE_9__ {TYPE_3__ next; int /*<<< orphan*/  npages; TYPE_3__ prev; } ;
typedef  size_t Size ;
typedef  TYPE_1__ FreePageSpanLeader ;
typedef  TYPE_2__ FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FPM_NUM_FREELISTS ; 
 size_t FPM_PAGE_SIZE ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 
 char* FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (char*,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__,TYPE_3__) ; 

__attribute__((used)) static void
FUNC6(FreePageManager *fpm, Size pageno)
{
	char	   *base = FUNC3(fpm);
	FreePageSpanLeader *span;
	FreePageSpanLeader *next;
	FreePageSpanLeader *prev;

	span = (FreePageSpanLeader *) FUNC2(base, pageno);

	next = FUNC4(base, span->next);
	prev = FUNC4(base, span->prev);
	if (next != NULL)
		FUNC5(next->prev, span->prev);
	if (prev != NULL)
		FUNC5(prev->next, span->next);
	else
	{
		Size		f = FUNC1(span->npages, FPM_NUM_FREELISTS) - 1;

		FUNC0(fpm->freelist[f].relptr_off == pageno * FPM_PAGE_SIZE);
		FUNC5(fpm->freelist[f], span->next);
	}
}