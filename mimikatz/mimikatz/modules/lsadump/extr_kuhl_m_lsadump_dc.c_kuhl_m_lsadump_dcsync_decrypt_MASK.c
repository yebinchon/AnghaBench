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
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int LM_NTLM_HASH_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

BOOL FUNC5(PBYTE encodedData, DWORD encodedDataSize, DWORD rid, LPCWSTR prefix, BOOL isHistory)
{
	DWORD i;
	BOOL status = FALSE;
	BYTE data[LM_NTLM_HASH_LENGTH];
	for(i = 0; i < encodedDataSize; i += LM_NTLM_HASH_LENGTH)
	{
		status = FUNC0(FUNC2(encodedData + i, &rid, data));
		if(status)
		{
			if(isHistory)
				FUNC3(L"    %s-%2u: ", prefix, i / LM_NTLM_HASH_LENGTH);
			else
				FUNC3(L"  Hash %s: ", prefix);
			FUNC4(data, LM_NTLM_HASH_LENGTH, 0);
			FUNC3(L"\n");
		}
		else FUNC1(L"RtlDecryptDES2blocks1DWORD");
	}
	return status;
}