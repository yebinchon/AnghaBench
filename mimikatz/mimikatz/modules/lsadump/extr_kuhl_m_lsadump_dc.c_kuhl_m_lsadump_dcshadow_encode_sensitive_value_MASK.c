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
struct TYPE_4__ {int valLen; scalar_t__ pVal; } ;
typedef  int /*<<< orphan*/  PSecPkgContext_SessionKey ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_1__ ATTRVAL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int LM_NTLM_HASH_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

BOOL FUNC5(BOOL fNTLM, DWORD rid, ATTRVAL *val, PSecPkgContext_SessionKey SessionKey)
{
	DWORD i;
	BYTE data[LM_NTLM_HASH_LENGTH];
	BOOL status = FALSE;

	if(fNTLM)
	{
		if(!(val->valLen % LM_NTLM_HASH_LENGTH))
		{
			status = TRUE;
			for(i = 0; (i < val->valLen) && status; i += LM_NTLM_HASH_LENGTH)
			{
				status = FUNC0(FUNC3(val->pVal + i, &rid, data));
				if(status)
					FUNC2(val->pVal + i, data, LM_NTLM_HASH_LENGTH);
				else FUNC1(L"RtlEncryptDES2blocks1DWORD");
			}
		}
		else FUNC1(L"Unexpected hash len (%u)\n", val->valLen);
	}
	if(!fNTLM || status)
		status = FUNC4(val, SessionKey);
	return status;
}