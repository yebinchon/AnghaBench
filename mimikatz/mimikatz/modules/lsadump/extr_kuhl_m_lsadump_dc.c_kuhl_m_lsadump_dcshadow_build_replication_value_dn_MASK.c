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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int valLen; int /*<<< orphan*/ * pVal; } ;
struct TYPE_4__ {int structLen; int NameLen; int /*<<< orphan*/  StringName; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int DWORD ;
typedef  TYPE_1__ DSNAME ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_2__ ATTRVAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

BOOL FUNC4(ATTRVAL* pVal, PWSTR szValue)
{
	DWORD len = FUNC3(szValue);
	
	pVal->valLen = sizeof(DSNAME) + len * sizeof(WCHAR);
	pVal->pVal = (PBYTE) FUNC0(pVal->valLen);
	if(pVal->pVal)
	{
		FUNC2(pVal->pVal, pVal->valLen);
		((DSNAME*)pVal->pVal)->structLen = pVal->valLen;
		((DSNAME*)pVal->pVal)->NameLen = len;
		FUNC1(((DSNAME*)pVal->pVal)->StringName, szValue, (len+1)*sizeof(WCHAR));
	}
	return pVal->pVal != NULL;
}