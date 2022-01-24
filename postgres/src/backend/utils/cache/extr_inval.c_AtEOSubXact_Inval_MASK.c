#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int my_level; int RelcacheInitFileInval; struct TYPE_4__* parent; int /*<<< orphan*/  PriorCmdInvalidMsgs; } ;
typedef  TYPE_1__ TransInvalidationInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  LocalExecuteInvalidationMessage ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* transInvalInfo ; 

void
FUNC6(bool isCommit)
{
	int			my_level;
	TransInvalidationInfo *myInfo = transInvalInfo;

	/* Quick exit if no messages. */
	if (myInfo == NULL)
		return;

	/* Also bail out quickly if messages are not for this level. */
	my_level = FUNC3();
	if (myInfo->my_level != my_level)
	{
		FUNC1(myInfo->my_level < my_level);
		return;
	}

	if (isCommit)
	{
		/* If CurrentCmdInvalidMsgs still has anything, fix it */
		FUNC2();

		/*
		 * We create invalidation stack entries lazily, so the parent might
		 * not have one.  Instead of creating one, moving all the data over,
		 * and then freeing our own, we can just adjust the level of our own
		 * entry.
		 */
		if (myInfo->parent == NULL || myInfo->parent->my_level < my_level - 1)
		{
			myInfo->my_level--;
			return;
		}

		/* Pass up my inval messages to parent */
		FUNC0(&myInfo->parent->PriorCmdInvalidMsgs,
								   &myInfo->PriorCmdInvalidMsgs);

		/* Pending relcache inval becomes parent's problem too */
		if (myInfo->RelcacheInitFileInval)
			myInfo->parent->RelcacheInitFileInval = true;

		/* Pop the transaction state stack */
		transInvalInfo = myInfo->parent;

		/* Need not free anything else explicitly */
		FUNC5(myInfo);
	}
	else
	{
		FUNC4(&myInfo->PriorCmdInvalidMsgs,
									LocalExecuteInvalidationMessage);

		/* Pop the transaction state stack */
		transInvalInfo = myInfo->parent;

		/* Need not free anything else explicitly */
		FUNC5(myInfo);
	}
}