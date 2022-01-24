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
typedef  int /*<<< orphan*/  SemaphoreHandle_t ;
typedef  int /*<<< orphan*/  OsiReturnVal_e ;
typedef  int /*<<< orphan*/ * OsiLockObj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSI_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

OsiReturnVal_e FUNC2(OsiLockObj_t* pLockObj)
{
    SemaphoreHandle_t *pl_LockObj = (SemaphoreHandle_t *)pLockObj;

    FUNC1(*pl_LockObj);

    FUNC0 (*pLockObj != NULL);

    return OSI_OK;
}