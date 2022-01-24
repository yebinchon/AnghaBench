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
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC6(HCRYPTKEY key, LPVOID data, DWORD dataLen, LPVOID *out, DWORD *outLen)
{
	BOOL status = FALSE;
	HCRYPTKEY hTmp;
	*out = NULL;
	*outLen = dataLen;
	if(FUNC2(key, NULL, 0, &hTmp))
	{
		if((*out = FUNC3(LPTR, dataLen)))
		{
			FUNC5(*out, data, dataLen);
			if(!(status = FUNC0(hTmp, 0, TRUE, 0, (PBYTE) *out, outLen)))
				*out = FUNC4(*out);
		}
		FUNC1(hTmp);
	}
	return status;
}