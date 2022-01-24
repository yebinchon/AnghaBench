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
typedef  int /*<<< orphan*/  WELL_KNOWN_SID_TYPE ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

BOOL FUNC4(WELL_KNOWN_SID_TYPE WellKnownSidType, PSID DomainSid, PSID * pSid)
{
	BOOL status = FALSE;
	DWORD szNeeded = 0, dwError;
	FUNC0(WellKnownSidType, DomainSid, NULL, &szNeeded);
	dwError = FUNC1();
	if((dwError == ERROR_INVALID_PARAMETER) || (dwError == ERROR_INSUFFICIENT_BUFFER))
		if((*pSid = (PSID) FUNC2(LPTR, szNeeded)))
			if(!(status = FUNC0(WellKnownSidType, DomainSid, *pSid, &szNeeded)))
				*pSid = FUNC3(*pSid);
	return status;
}