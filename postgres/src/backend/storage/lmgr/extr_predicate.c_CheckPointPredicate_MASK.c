#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int headPage; int /*<<< orphan*/  tailXid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  OldSerXidLock ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OldSerXidSlruCtl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* oldSerXidControl ; 

void
FUNC6(void)
{
	int			tailPage;

	FUNC0(OldSerXidLock, LW_EXCLUSIVE);

	/* Exit quickly if the SLRU is currently not in use. */
	if (oldSerXidControl->headPage < 0)
	{
		FUNC1(OldSerXidLock);
		return;
	}

	if (FUNC5(oldSerXidControl->tailXid))
	{
		/* We can truncate the SLRU up to the page containing tailXid */
		tailPage = FUNC2(oldSerXidControl->tailXid);
	}
	else
	{
		/*
		 * The SLRU is no longer needed. Truncate to head before we set head
		 * invalid.
		 *
		 * XXX: It's possible that the SLRU is not needed again until XID
		 * wrap-around has happened, so that the segment containing headPage
		 * that we leave behind will appear to be new again. In that case it
		 * won't be removed until XID horizon advances enough to make it
		 * current again.
		 */
		tailPage = oldSerXidControl->headPage;
		oldSerXidControl->headPage = -1;
	}

	FUNC1(OldSerXidLock);

	/* Truncate away pages that are no longer required */
	FUNC4(OldSerXidSlruCtl, tailPage);

	/*
	 * Flush dirty SLRU pages to disk
	 *
	 * This is not actually necessary from a correctness point of view. We do
	 * it merely as a debugging aid.
	 *
	 * We're doing this after the truncation to avoid writing pages right
	 * before deleting the file in which they sit, which would be completely
	 * pointless.
	 */
	FUNC3(OldSerXidSlruCtl, true);
}