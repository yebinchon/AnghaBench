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
struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ DevicePath; int /*<<< orphan*/ * hDevice; } ;
typedef  TYPE_1__* PSR98_DEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(PSR98_DEVICE devices)
{
	PSR98_DEVICE tmp;
	while(devices)
	{
		if(devices->hDevice)
		{
			FUNC0(devices->hDevice);
			devices->hDevice = NULL;
		}
		if(devices->DevicePath)
			FUNC2(devices->DevicePath);
		tmp = devices->next;
		FUNC1(devices);
		devices = tmp;
	}
}