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
typedef  int /*<<< orphan*/  __int64 ;
struct TYPE_3__ {int valLen; int /*<<< orphan*/ * pVal; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ATTRVAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

BOOL FUNC2(ATTRVAL* pVal, PWSTR szValue)
{
	
	pVal->valLen = sizeof(__int64);
	pVal->pVal = (PBYTE) FUNC0(pVal->valLen);
	if(pVal->pVal)
		*(__int64*) pVal->pVal = FUNC1(szValue, NULL, 10);
	return pVal->pVal != NULL;
}