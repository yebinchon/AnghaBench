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
struct TYPE_3__ {int cbData; scalar_t__ pbData; } ;
typedef  TYPE_1__* PCRYPT_INTEGER_BLOB ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ LPCWCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*,int*) ; 

BOOL FUNC6(LPCWCHAR szSn, PCRYPT_INTEGER_BLOB sn)
{
	BOOL status = FALSE;
	if(szSn)
	{
		status = FUNC5(szSn, &sn->pbData, &sn->cbData);
		if(!status)
			FUNC4(L"Unable to use \'%s\' as a HEX string\n", szSn);
	}
	else
	{
		sn->cbData = 20;
		if((sn->pbData = (PBYTE) FUNC1(LPTR, sn->cbData)))
		{
			status = FUNC3(FUNC0(sn->pbData, sn->cbData));
			if(!status)
				FUNC2(sn->pbData);
		}
	}
	return status;
}