#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
struct TYPE_5__ {int member_0; int member_1; char* member_2; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_6__ {int valLen; void* pVal; } ;
typedef  char* PWSTR ;
typedef  void* PBYTE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_2__ ATTRVAL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (char*,void*,int) ; 
 int FUNC7 (char*) ; 

BOOL FUNC8(ATTRVAL* pVal, PWSTR szValue)
{
	DWORD len = FUNC7(szValue);
	
	if(len == 38 && szValue[0] == '{' && szValue[37] == '}')
	{
		GUID guid;
		UNICODE_STRING GuidString = {(USHORT)len*sizeof(WCHAR),(USHORT)len*sizeof(WCHAR), szValue};
		if(FUNC1(FUNC5(&GuidString, &guid)))
		{
			pVal->valLen = sizeof(GUID);
			pVal->pVal = (PBYTE) FUNC0(pVal->valLen);
			if(!pVal->pVal)
				return FALSE;
			FUNC4(pVal->pVal, &guid, sizeof(GUID));
			return TRUE;
		}
		else FUNC2(L"RtlGUIDFromString %s\n", szValue);

	}
	else
	{
		pVal->valLen = (ULONG) (len/2);
		pVal->pVal = (PBYTE) FUNC0(pVal->valLen);
		if(!pVal->pVal)
			return FALSE;
		if(FUNC6(szValue, pVal->pVal, pVal->valLen))
			return TRUE;
		FUNC3(L"kull_m_string_stringToHex");
	}
	return FALSE;
}