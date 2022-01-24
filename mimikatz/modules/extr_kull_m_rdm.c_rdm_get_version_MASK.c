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
typedef  scalar_t__ PSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDM_IOCTL_GET_VERSION ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

BOOL FUNC4(HANDLE hFile, PSTR *version)
{
	BOOL status = FALSE;
	BYTE *data, szData;

	if(FUNC3(hFile, RDM_IOCTL_GET_VERSION, NULL, 0, &data, &szData))
	{
		if(data)
		{
			if((*version = (PSTR) FUNC0(LPTR, szData + 1)))
			{
				FUNC2(*version, data, szData);
				status = TRUE;
			}
			FUNC1(data);
		}
	}
	return status;
}