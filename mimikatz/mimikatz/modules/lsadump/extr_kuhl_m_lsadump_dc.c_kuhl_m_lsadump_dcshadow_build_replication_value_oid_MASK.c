#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int valLen; scalar_t__ pVal; } ;
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  scalar_t__ PSTR ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ATTRVAL ;
typedef  int /*<<< orphan*/  ATTRTYP ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  SCHEMA_DEFAULT_PREFIX_TABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

BOOL FUNC4(ATTRVAL* pVal, PWSTR szValue)
{
	BOOL fSuccess = FALSE;
	PSTR szANSIValue = FUNC3(szValue);
	
	if(szANSIValue)
	{
		pVal->valLen = sizeof(DWORD);
		pVal->pVal = (PBYTE) FUNC1(pVal->valLen);
		if(pVal->pVal)
			fSuccess = FUNC2((SCHEMA_PREFIX_TABLE*) &SCHEMA_DEFAULT_PREFIX_TABLE, szANSIValue, (ATTRTYP*) pVal->pVal, FALSE );
		FUNC0(szANSIValue);
	}
	return fSuccess;
}