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
typedef  int /*<<< orphan*/  SMgrRelation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  scalar_t__ ForkNumber ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBackendId ; 
 scalar_t__ MAX_FORKNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(RelFileNode *delrels, int ndelrels, bool isRedo)
{
	SMgrRelation *srels;
	int			i;

	srels = FUNC1(sizeof(SMgrRelation) * ndelrels);
	for (i = 0; i < ndelrels; i++)
	{
		SMgrRelation srel = FUNC5(delrels[i], InvalidBackendId);

		if (isRedo)
		{
			ForkNumber	fork;

			for (fork = 0; fork <= MAX_FORKNUM; fork++)
				FUNC0(delrels[i], fork);
		}
		srels[i] = srel;
	}

	FUNC4(srels, ndelrels, isRedo);

	for (i = 0; i < ndelrels; i++)
		FUNC3(srels[i]);
	FUNC2(srels);
}