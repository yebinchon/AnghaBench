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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int valLen; int /*<<< orphan*/ * pVal; } ;
struct TYPE_5__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int LONGLONG ;
typedef  TYPE_1__ FILETIME ;
typedef  int DSTIME ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_2__ ATTRVAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOL FUNC4(ATTRVAL* pVal, PWSTR szValue)
{
	ULONG len = 0;
	FILETIME ft;
	DSTIME dstime;
	
	if(FUNC3(szValue, &ft))
	{
		pVal->valLen = sizeof(DSTIME);
		pVal->pVal = (PBYTE) FUNC0(pVal->valLen);
		dstime = ((LONGLONG)(ft.dwLowDateTime + ((LONGLONG)ft.dwHighDateTime << 32))) / 10000000;
		if(pVal->pVal)
			FUNC2(pVal->pVal, &dstime, sizeof(DSTIME));
	}
	else FUNC1(L"kull_m_string_stringToFileTime");
	return pVal->pVal != NULL;
}