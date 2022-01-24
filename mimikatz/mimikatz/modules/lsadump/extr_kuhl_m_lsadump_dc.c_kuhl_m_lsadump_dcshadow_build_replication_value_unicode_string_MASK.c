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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int valLen; scalar_t__ pVal; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ATTRVAL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

BOOL FUNC3(ATTRVAL* pVal, PWSTR szValue)
{
	
	pVal->valLen = (FUNC2(szValue) + 1) * sizeof(WCHAR);
	pVal->pVal = (PBYTE) FUNC0( pVal->valLen);
	if(!pVal->pVal)
		return FALSE;
	FUNC1(pVal->pVal, szValue, pVal->valLen);
	return TRUE;
}