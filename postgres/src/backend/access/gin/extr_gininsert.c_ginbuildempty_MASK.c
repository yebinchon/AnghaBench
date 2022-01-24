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
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GIN_LEAF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT_FORKNUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_NEW ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(Relation index)
{
	Buffer		RootBuffer,
				MetaBuffer;

	/* An empty GIN index has two pages. */
	MetaBuffer =
		FUNC5(index, INIT_FORKNUM, P_NEW, RBM_NORMAL, NULL);
	FUNC3(MetaBuffer, BUFFER_LOCK_EXCLUSIVE);
	RootBuffer =
		FUNC5(index, INIT_FORKNUM, P_NEW, RBM_NORMAL, NULL);
	FUNC3(RootBuffer, BUFFER_LOCK_EXCLUSIVE);

	/* Initialize and xlog metabuffer and root buffer. */
	FUNC6();
	FUNC2(MetaBuffer);
	FUNC4(MetaBuffer);
	FUNC8(MetaBuffer, true);
	FUNC1(RootBuffer, GIN_LEAF);
	FUNC4(RootBuffer);
	FUNC8(RootBuffer, false);
	FUNC0();

	/* Unlock and release the buffers. */
	FUNC7(MetaBuffer);
	FUNC7(RootBuffer);
}