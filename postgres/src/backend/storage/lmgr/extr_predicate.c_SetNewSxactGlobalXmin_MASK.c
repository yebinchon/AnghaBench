#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ SxactGlobalXmin; int SxactGlobalXminCount; } ;
struct TYPE_9__ {scalar_t__ xmin; } ;
typedef  TYPE_1__ SERIALIZABLEXACT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ InvalidTransactionId ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* OldCommittedSxact ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_4__* PredXact ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(void)
{
	SERIALIZABLEXACT *sxact;

	FUNC0(FUNC2(SerializableXactHashLock));

	PredXact->SxactGlobalXmin = InvalidTransactionId;
	PredXact->SxactGlobalXminCount = 0;

	for (sxact = FUNC1(); sxact != NULL; sxact = FUNC3(sxact))
	{
		if (!FUNC6(sxact)
			&& !FUNC5(sxact)
			&& sxact != OldCommittedSxact)
		{
			FUNC0(sxact->xmin != InvalidTransactionId);
			if (!FUNC8(PredXact->SxactGlobalXmin)
				|| FUNC9(sxact->xmin,
										 PredXact->SxactGlobalXmin))
			{
				PredXact->SxactGlobalXmin = sxact->xmin;
				PredXact->SxactGlobalXminCount = 1;
			}
			else if (FUNC7(sxact->xmin,
										 PredXact->SxactGlobalXmin))
				PredXact->SxactGlobalXminCount++;
		}
	}

	FUNC4(PredXact->SxactGlobalXmin);
}