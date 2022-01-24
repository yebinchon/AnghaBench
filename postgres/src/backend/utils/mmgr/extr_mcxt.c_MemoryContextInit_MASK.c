#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CurrentMemoryContext ; 
 void* ErrorContext ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/ * TopMemoryContext ; 

void
FUNC3(void)
{
	FUNC1(TopMemoryContext == NULL);

	/*
	 * First, initialize TopMemoryContext, which is the parent of all others.
	 */
	TopMemoryContext = FUNC0((MemoryContext) NULL,
											 "TopMemoryContext",
											 ALLOCSET_DEFAULT_SIZES);

	/*
	 * Not having any other place to point CurrentMemoryContext, make it point
	 * to TopMemoryContext.  Caller should change this soon!
	 */
	CurrentMemoryContext = TopMemoryContext;

	/*
	 * Initialize ErrorContext as an AllocSetContext with slow growth rate ---
	 * we don't really expect much to be allocated in it. More to the point,
	 * require it to contain at least 8K at all times. This is the only case
	 * where retained memory in a context is *essential* --- we want to be
	 * sure ErrorContext still has some memory even if we've run out
	 * elsewhere! Also, allow allocations in ErrorContext within a critical
	 * section. Otherwise a PANIC will cause an assertion failure in the error
	 * reporting code, before printing out the real cause of the failure.
	 *
	 * This should be the last step in this function, as elog.c assumes memory
	 * management works once ErrorContext is non-null.
	 */
	ErrorContext = FUNC0(TopMemoryContext,
										 "ErrorContext",
										 8 * 1024,
										 8 * 1024,
										 8 * 1024);
	FUNC2(ErrorContext, true);
}