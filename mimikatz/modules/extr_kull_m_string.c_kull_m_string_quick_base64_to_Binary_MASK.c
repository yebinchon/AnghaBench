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
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_STRING_BASE64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

BOOL FUNC3(PCWSTR base64, PBYTE *data, DWORD *szData)
{
	BOOL status = FALSE;
	*data = NULL;
	*szData = 0;
	if(FUNC0(base64, 0, CRYPT_STRING_BASE64, NULL, szData, NULL, NULL))
	{
		if((*data = (PBYTE) FUNC1(LPTR, *szData)))
		{
			status = FUNC0(base64, 0, CRYPT_STRING_BASE64, *data, szData, NULL, NULL);
			if(!status)
				*data = (PBYTE) FUNC2(*data);
		}
	}
	return status;
}