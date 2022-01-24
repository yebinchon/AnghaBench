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
struct TYPE_4__ {int valCount; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pszValue; TYPE_1__ AttrVal; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_2__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC4(PCWSTR szValue, PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE pAttribute, BOOL fAddMultipleValues)
{
	DWORD dwNewCb = (fAddMultipleValues ? pAttribute->AttrVal.valCount+1 : 1);
	PWSTR* pszOldValues = pAttribute->pszValue;
	
	pAttribute->pszValue = (PWSTR *) FUNC0(LPTR, sizeof(PWSTR) * (dwNewCb));
	if(pAttribute->pszValue)
	{
		if(FUNC3(pAttribute->pszValue + dwNewCb-1, szValue))
		{
			if(fAddMultipleValues && pAttribute->AttrVal.valCount)
				FUNC2(pAttribute->pszValue, pszOldValues, sizeof(PWSTR) * pAttribute->AttrVal.valCount);
			pAttribute->AttrVal.valCount = dwNewCb;
			if(pszOldValues)
				FUNC1(pszOldValues);
			return TRUE;
		}
		else
			FUNC1(pAttribute->pszValue);
	}
	pAttribute->pszValue = pszOldValues;
	return FALSE;
}