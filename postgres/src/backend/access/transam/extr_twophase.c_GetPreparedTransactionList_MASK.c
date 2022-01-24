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
struct TYPE_2__ {int numPrepXacts; int /*<<< orphan*/ * prepXacts; } ;
typedef  int /*<<< orphan*/  GlobalTransactionData ;
typedef  int /*<<< orphan*/ * GlobalTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_1__* TwoPhaseState ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(GlobalTransaction *gxacts)
{
	GlobalTransaction array;
	int			num;
	int			i;

	FUNC0(TwoPhaseStateLock, LW_SHARED);

	if (TwoPhaseState->numPrepXacts == 0)
	{
		FUNC1(TwoPhaseStateLock);

		*gxacts = NULL;
		return 0;
	}

	num = TwoPhaseState->numPrepXacts;
	array = (GlobalTransaction) FUNC3(sizeof(GlobalTransactionData) * num);
	*gxacts = array;
	for (i = 0; i < num; i++)
		FUNC2(array + i, TwoPhaseState->prepXacts[i],
			   sizeof(GlobalTransactionData));

	FUNC1(TwoPhaseStateLock);

	return num;
}