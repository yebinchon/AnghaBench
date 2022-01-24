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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  BRIN_PAGETYPE_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(Relation idxrel, Buffer buffer)
{
	Page		page;

	FUNC0((DEBUG2,
			   "brin_initialize_empty_new_buffer: initializing blank page %u",
			   FUNC1(buffer)));

	FUNC6();
	page = FUNC2(buffer);
	FUNC8(page, BRIN_PAGETYPE_REGULAR);
	FUNC4(buffer);
	FUNC9(buffer, true);
	FUNC3();

	/*
	 * We update the FSM for this page, but this is not WAL-logged.  This is
	 * acceptable because VACUUM will scan the index and update the FSM with
	 * pages whose FSM records were forgotten in a crash.
	 */
	FUNC5(idxrel, FUNC1(buffer),
							FUNC7(page));
}