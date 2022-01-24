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
typedef  int /*<<< orphan*/  slock_t ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  PROC_HDR ;
typedef  int /*<<< orphan*/  PGXACT ;
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  MaxBackends ; 
 int /*<<< orphan*/  NUM_AUXILIARY_PROCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max_prepared_xacts ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

Size
FUNC2(void)
{
	Size		size = 0;

	/* ProcGlobal */
	size = FUNC0(size, sizeof(PROC_HDR));
	/* MyProcs, including autovacuum workers and launcher */
	size = FUNC0(size, FUNC1(MaxBackends, sizeof(PGPROC)));
	/* AuxiliaryProcs */
	size = FUNC0(size, FUNC1(NUM_AUXILIARY_PROCS, sizeof(PGPROC)));
	/* Prepared xacts */
	size = FUNC0(size, FUNC1(max_prepared_xacts, sizeof(PGPROC)));
	/* ProcStructLock */
	size = FUNC0(size, sizeof(slock_t));

	size = FUNC0(size, FUNC1(MaxBackends, sizeof(PGXACT)));
	size = FUNC0(size, FUNC1(NUM_AUXILIARY_PROCS, sizeof(PGXACT)));
	size = FUNC0(size, FUNC1(max_prepared_xacts, sizeof(PGXACT)));

	return size;
}