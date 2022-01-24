#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int valCount; TYPE_1__* pAVal; } ;
struct TYPE_4__ {scalar_t__ pVal; } ;
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  PUSER_PROPERTIES ;
typedef  int* PDWORD ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LPFILETIME ;
typedef  int DWORD ;
typedef  TYPE_2__ ATTRVALBLOCK ;
typedef  int /*<<< orphan*/  ATTRBLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int* FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * KUHL_M_LSADUMP_UF_FLAG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  szOID_ANSI_accountExpires ; 
 int /*<<< orphan*/  szOID_ANSI_dBCSPwd ; 
 int /*<<< orphan*/  szOID_ANSI_lmPwdHistory ; 
 int /*<<< orphan*/  szOID_ANSI_ntPwdHistory ; 
 int /*<<< orphan*/  szOID_ANSI_objectSid ; 
 int /*<<< orphan*/  szOID_ANSI_pwdLastSet ; 
 int /*<<< orphan*/  szOID_ANSI_sAMAccountName ; 
 int /*<<< orphan*/  szOID_ANSI_sAMAccountType ; 
 int /*<<< orphan*/  szOID_ANSI_sIDHistory ; 
 int /*<<< orphan*/  szOID_ANSI_supplementalCredentials ; 
 int /*<<< orphan*/  szOID_ANSI_unicodePwd ; 
 int /*<<< orphan*/  szOID_ANSI_userAccountControl ; 
 int /*<<< orphan*/  szOID_ANSI_userPrincipalName ; 

void FUNC13(SCHEMA_PREFIX_TABLE *prefixTable, ATTRBLOCK *attributes)
{
	DWORD rid = 0, i;
	PBYTE encodedData;
	DWORD encodedDataSize;
	PVOID data;
	ATTRVALBLOCK *sids;
	
	FUNC3(L"** SAM ACCOUNT **\n\n");
	FUNC9(L"SAM Username         : ", prefixTable, attributes, szOID_ANSI_sAMAccountName, TRUE);
	FUNC9(L"User Principal Name  : ", prefixTable, attributes, szOID_ANSI_userPrincipalName, TRUE);
	
	if(FUNC8(prefixTable, attributes, szOID_ANSI_sAMAccountType, &data, NULL))
		FUNC3(L"Account Type         : %08x ( %s )\n", *(PDWORD) data, FUNC6(*(PDWORD) data));

	if(FUNC8(prefixTable, attributes, szOID_ANSI_userAccountControl, &data, NULL))
	{
		FUNC3(L"User Account Control : %08x ( ", *(PDWORD) data);
		for(i = 0; i < FUNC12(FUNC0(KUHL_M_LSADUMP_UF_FLAG), sizeof(DWORD) * 8); i++)
			if((1 << i) & *(PDWORD) data)
				FUNC3(L"%s ", KUHL_M_LSADUMP_UF_FLAG[i]);
		FUNC3(L")\n");
	}

	if(FUNC8(prefixTable, attributes, szOID_ANSI_accountExpires, &data, NULL))
	{
		FUNC3(L"Account expiration   : ");
		FUNC10((LPFILETIME) data);
		FUNC3(L"\n");
	}

	if(FUNC8(prefixTable, attributes, szOID_ANSI_pwdLastSet, &data, NULL))
	{
		FUNC3(L"Password last change : ");
		FUNC10((LPFILETIME) data);
		FUNC3(L"\n");
	}
	
	if((sids = FUNC7(prefixTable, attributes, szOID_ANSI_sIDHistory)))
	{
		FUNC3(L"SID history:\n");
		for(i = 0; i < sids->valCount; i++)
		{
			FUNC3(L"  ");
			FUNC11(sids->pAVal[i].pVal);
			FUNC3(L"\n");
		}
	}

	if(FUNC8(prefixTable, attributes, szOID_ANSI_objectSid, &data, NULL))
	{
		FUNC3(L"Object Security ID   : ");
		FUNC11(data);
		FUNC3(L"\n");
		rid = *FUNC1(data, *FUNC2(data) - 1);
		FUNC3(L"Object Relative ID   : %u\n", rid);

		FUNC3(L"\nCredentials:\n");
		if(FUNC8(prefixTable, attributes, szOID_ANSI_unicodePwd, &encodedData, &encodedDataSize))
			FUNC4(encodedData, encodedDataSize, rid, L"NTLM", FALSE);
		if(FUNC8(prefixTable, attributes, szOID_ANSI_ntPwdHistory, &encodedData, &encodedDataSize))
			FUNC4(encodedData, encodedDataSize, rid, L"ntlm", TRUE);
		if(FUNC8(prefixTable, attributes, szOID_ANSI_dBCSPwd, &encodedData, &encodedDataSize))
			FUNC4(encodedData, encodedDataSize, rid, L"LM  ", FALSE);
		if(FUNC8(prefixTable, attributes, szOID_ANSI_lmPwdHistory, &encodedData, &encodedDataSize))
			FUNC4(encodedData, encodedDataSize, rid, L"lm  ", TRUE);
	}

	if(FUNC8(prefixTable, attributes, szOID_ANSI_supplementalCredentials, &encodedData, &encodedDataSize))
	{
		FUNC3(L"\nSupplemental Credentials:\n");
		FUNC5((PUSER_PROPERTIES) encodedData);
	}
}