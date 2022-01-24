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
typedef  scalar_t__ P_OSI_INTR_ENTRY ;
typedef  int /*<<< orphan*/  OsiReturnVal_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int,void (*) ()) ; 
 int /*<<< orphan*/  OSI_OK ; 

OsiReturnVal_e FUNC3(int iIntrNum,P_OSI_INTR_ENTRY pEntry,unsigned char ucPriority)
{
	FUNC2(iIntrNum,(void(*)(void))pEntry);
	FUNC1(iIntrNum, ucPriority);
	FUNC0(iIntrNum);
	return OSI_OK;
}