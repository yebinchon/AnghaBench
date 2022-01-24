#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  blkno; int /*<<< orphan*/  forkno; int /*<<< orphan*/  node; } ;
struct TYPE_4__ {int /*<<< orphan*/  present; TYPE_1__ key; } ;
typedef  TYPE_2__ xl_invalid_page ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * invalid_page_tab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	HASH_SEQ_STATUS status;
	xl_invalid_page *hentry;
	bool		foundone = false;

	if (invalid_page_tab == NULL)
		return;					/* nothing to do */

	FUNC2(&status, invalid_page_tab);

	/*
	 * Our strategy is to emit WARNING messages for all remaining entries and
	 * only PANIC after we've dumped all the available info.
	 */
	while ((hentry = (xl_invalid_page *) FUNC3(&status)) != NULL)
	{
		FUNC4(WARNING, hentry->key.node, hentry->key.forkno,
							hentry->key.blkno, hentry->present);
		foundone = true;
	}

	if (foundone)
		FUNC0(PANIC, "WAL contains references to invalid pages");

	FUNC1(invalid_page_tab);
	invalid_page_tab = NULL;
}