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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  SR98_IOCTL_EMID_READ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int**,int*) ; 

BOOL FUNC4(HANDLE hFile, BYTE emid[5])
{
	BOOL status = FALSE;
	BYTE *out, szOut;
	if(FUNC3(hFile, SR98_IOCTL_EMID_READ, NULL, 0, &out, &szOut))
	{
		if((status = (szOut == 6)))
			FUNC2(emid, out + 1, 5);
		else FUNC1(L"Received size is not 6 (0x%02x)\n", szOut);
		FUNC0(out);
	}
	return status;
}