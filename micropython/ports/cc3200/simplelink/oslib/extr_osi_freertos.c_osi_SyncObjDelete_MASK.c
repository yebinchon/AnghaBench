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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

OsiReturnVal_e FUNC1(OsiSyncObj_t* pSyncObj)
{
    FUNC0(*pSyncObj );
    return OSI_OK;
}