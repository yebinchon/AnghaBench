#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tailKnownAssignedXids; int headKnownAssignedXids; int /*<<< orphan*/  numKnownAssignedXids; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ProcArrayStruct ;

/* Variables and functions */
 int /*<<< orphan*/ * KnownAssignedXids ; 
 scalar_t__* KnownAssignedXidsValid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* procArray ; 

__attribute__((used)) static void
FUNC4(int trace_level)
{
	ProcArrayStruct *pArray = procArray;
	StringInfoData buf;
	int			head,
				tail,
				i;
	int			nxids = 0;

	tail = pArray->tailKnownAssignedXids;
	head = pArray->headKnownAssignedXids;

	FUNC2(&buf);

	for (i = tail; i < head; i++)
	{
		if (KnownAssignedXidsValid[i])
		{
			nxids++;
			FUNC0(&buf, "[%d]=%u ", i, KnownAssignedXids[i]);
		}
	}

	FUNC1(trace_level, "%d KnownAssignedXids (num=%d tail=%d head=%d) %s",
		 nxids,
		 pArray->numKnownAssignedXids,
		 pArray->tailKnownAssignedXids,
		 pArray->headKnownAssignedXids,
		 buf.data);

	FUNC3(buf.data);
}