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
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  PKULL_M_PN532_COMM ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  PN532_CMD_GetFirmwareVersion ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

BOOL FUNC1(PKULL_M_PN532_COMM comm, BYTE firmwareInfo[4])
{
	BOOL status = FALSE;
	UINT16 wRet = 4;
	if(FUNC0(comm, PN532_CMD_GetFirmwareVersion, NULL, 0, firmwareInfo, &wRet))
		status = (wRet == 4);
	return status;
}