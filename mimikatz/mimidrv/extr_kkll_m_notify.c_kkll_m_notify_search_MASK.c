#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_9__ {int /*<<< orphan*/  off1; int /*<<< orphan*/  off0; } ;
struct TYPE_8__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Pattern; } ;
struct TYPE_10__ {TYPE_2__ Offsets; TYPE_1__ Search; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_2__* PKKLL_M_MEMORY_OFFSETS ;
typedef  TYPE_3__* PKKLL_M_MEMORY_GENERIC ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC5(PKKLL_M_MEMORY_GENERIC generics, SIZE_T cbGenerics, PUCHAR * ptr, PULONG pRoutineMax, PKKLL_M_MEMORY_OFFSETS * pOffsets)
{
	NTSTATUS status = STATUS_NOT_FOUND;
	PKKLL_M_MEMORY_GENERIC pGeneric;
	UNICODE_STRING stringStart, stringEnd;
	PUCHAR start, end;
	
	if((pGeneric = FUNC4(generics, cbGenerics)))
	{
		FUNC2(&stringStart, pGeneric->start);
		FUNC2(&stringEnd, pGeneric->end);
		start = (PUCHAR) FUNC0(&stringStart);
		end = (PUCHAR) FUNC0(&stringEnd);

		if(start && end)
		{
			status = FUNC3(ptr, start, end, pGeneric->Search.Pattern, pGeneric->Search.Length, pGeneric->Offsets.off0);
			if(FUNC1(status))
			{
				if(pRoutineMax)
					*pRoutineMax = pGeneric->Offsets.off1;
				if(pOffsets)
					*pOffsets = &pGeneric->Offsets;
			}
		}
	}
	return status;
}