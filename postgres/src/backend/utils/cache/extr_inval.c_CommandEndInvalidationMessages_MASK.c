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
struct TYPE_2__ {int /*<<< orphan*/  CurrentCmdInvalidMsgs; int /*<<< orphan*/  PriorCmdInvalidMsgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LocalExecuteInvalidationMessage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* transInvalInfo ; 

void
FUNC2(void)
{
	/*
	 * You might think this shouldn't be called outside any transaction, but
	 * bootstrap does it, and also ABORT issued when not in a transaction. So
	 * just quietly return if no state to work on.
	 */
	if (transInvalInfo == NULL)
		return;

	FUNC1(&transInvalInfo->CurrentCmdInvalidMsgs,
								LocalExecuteInvalidationMessage);
	FUNC0(&transInvalInfo->PriorCmdInvalidMsgs,
							   &transInvalInfo->CurrentCmdInvalidMsgs);
}