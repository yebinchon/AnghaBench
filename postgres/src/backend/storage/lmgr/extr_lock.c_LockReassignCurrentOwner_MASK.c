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
typedef  int /*<<< orphan*/ * ResourceOwner ;
typedef  int /*<<< orphan*/  LOCALLOCK ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  LockMethodLocalHash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(LOCALLOCK **locallocks, int nlocks)
{
	ResourceOwner parent = FUNC2(CurrentResourceOwner);

	FUNC0(parent != NULL);

	if (locallocks == NULL)
	{
		HASH_SEQ_STATUS status;
		LOCALLOCK  *locallock;

		FUNC3(&status, LockMethodLocalHash);

		while ((locallock = (LOCALLOCK *) FUNC4(&status)) != NULL)
			FUNC1(locallock, parent);
	}
	else
	{
		int			i;

		for (i = nlocks - 1; i >= 0; i--)
			FUNC1(locallocks[i], parent);
	}
}