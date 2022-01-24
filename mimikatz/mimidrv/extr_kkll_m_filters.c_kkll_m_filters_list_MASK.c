#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  DriverName; } ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  TYPE_1__* PDRIVER_OBJECT ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__**,int,int*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  POOL_TAG ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(PKIWI_BUFFER outBuffer)
{
	NTSTATUS status;
	ULONG ActualNumberDriverObjects, sizeOfDriverObjects;
	PDRIVER_OBJECT * DriverObjectList = NULL;
	ULONG i;

	status = FUNC2(NULL, 0, &ActualNumberDriverObjects);
	if((status == STATUS_BUFFER_TOO_SMALL) && ActualNumberDriverObjects)
	{
		sizeOfDriverObjects = sizeof(PDRIVER_OBJECT) * ActualNumberDriverObjects;
		if((DriverObjectList = (PDRIVER_OBJECT *) FUNC0(NonPagedPool, sizeOfDriverObjects, POOL_TAG)))
		{
			status = FUNC2(DriverObjectList, sizeOfDriverObjects, &ActualNumberDriverObjects);
			for(i = 0; FUNC3(status) && (i < ActualNumberDriverObjects); i++)
			{
				status = FUNC5(outBuffer, L"[%.2u] %wZ\n",i , &(DriverObjectList[i]->DriverName));
				FUNC4(DriverObjectList[i]);
			}
			FUNC1(DriverObjectList, POOL_TAG);
		}
	}
	return status;
}