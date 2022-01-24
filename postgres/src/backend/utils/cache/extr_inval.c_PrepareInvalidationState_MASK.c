#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ my_level; struct TYPE_3__* parent; } ;
typedef  TYPE_1__ TransInvalidationInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 TYPE_1__* transInvalInfo ; 

__attribute__((used)) static void
FUNC3(void)
{
	TransInvalidationInfo *myInfo;

	if (transInvalInfo != NULL &&
		transInvalInfo->my_level == FUNC1())
		return;

	myInfo = (TransInvalidationInfo *)
		FUNC2(TopTransactionContext,
							   sizeof(TransInvalidationInfo));
	myInfo->parent = transInvalInfo;
	myInfo->my_level = FUNC1();

	/*
	 * If there's any previous entry, this one should be for a deeper nesting
	 * level.
	 */
	FUNC0(transInvalInfo == NULL ||
		   myInfo->my_level > transInvalInfo->my_level);

	transInvalInfo = myInfo;
}