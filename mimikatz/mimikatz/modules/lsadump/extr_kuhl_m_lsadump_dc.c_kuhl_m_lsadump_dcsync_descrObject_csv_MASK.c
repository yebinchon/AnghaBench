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
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  ATTRBLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 int LM_NTLM_HASH_LENGTH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szOID_ANSI_objectSid ; 
 int /*<<< orphan*/  szOID_ANSI_sAMAccountName ; 
 int /*<<< orphan*/  szOID_ANSI_unicodePwd ; 

void FUNC9(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes)
{
	DWORD rid = 0;
	PBYTE unicodePwd;
	DWORD unicodePwdSize;
	PVOID sid;
	BYTE clearHash[LM_NTLM_HASH_LENGTH];
	if(FUNC6(prefixTable, attributes, szOID_ANSI_sAMAccountName, NULL, NULL) &&
		FUNC6(prefixTable, attributes, szOID_ANSI_objectSid, &sid, NULL) &&
		FUNC6(prefixTable, attributes, szOID_ANSI_unicodePwd, &unicodePwd, &unicodePwdSize))
	{
		rid = *FUNC0(sid, *FUNC1(sid) - 1);
		FUNC5(L"%u\t", rid);
		FUNC7(NULL, prefixTable, attributes, szOID_ANSI_sAMAccountName, FALSE);
		FUNC5(L"\t");
		if(FUNC2(FUNC4(unicodePwd, &rid, clearHash)))
			FUNC8(clearHash, LM_NTLM_HASH_LENGTH, 0);
		else FUNC3(L"RtlDecryptDES2blocks1DWORD");
		FUNC5(L"\n");
	}
}