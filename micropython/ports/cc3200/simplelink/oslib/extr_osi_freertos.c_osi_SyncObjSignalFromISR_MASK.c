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
typedef  int /*<<< orphan*/  OsiSyncObj_t ;
typedef  int /*<<< orphan*/  OsiReturnVal_e ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_OK ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ xHigherPriorityTaskWoken ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 

OsiReturnVal_e FUNC2(OsiSyncObj_t* pSyncObj)
{
	xHigherPriorityTaskWoken = pdFALSE;
	if(pdTRUE == FUNC1( *pSyncObj, &xHigherPriorityTaskWoken ))
	{
		if( xHigherPriorityTaskWoken )
		{
			FUNC0 ();
		}
	}
	return OSI_OK;
}