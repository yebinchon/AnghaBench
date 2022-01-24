#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;
typedef  int INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  HCI_CMND_WLAN_IOCTL_SET_SCANPARAM ; 
 int HEADERS_SIZE_CMD ; 
 int SL_SET_SCAN_PARAMS_INTERVAL_LIST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  WLAN_SET_SCAN_PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC4(UINT32 uiEnable, UINT32 uiMinDwellTime,
	UINT32 uiMaxDwellTime,
	UINT32 uiNumOfProbeRequests,
	UINT32 uiChannelMask,INT32 iRSSIThreshold,
	UINT32 uiSNRThreshold,
	UINT32 uiDefaultTxPower,
	UINT32 *aiIntervalList)
{
	UINT32  uiRes;
	UINT8 *ptr;
	UINT8 *args;

	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_CMD);

	// Fill in temporary command buffer
	args = FUNC2(args, 36);
	args = FUNC2(args, uiEnable);
	args = FUNC2(args, uiMinDwellTime);
	args = FUNC2(args, uiMaxDwellTime);
	args = FUNC2(args, uiNumOfProbeRequests);
	args = FUNC2(args, uiChannelMask);
	args = FUNC2(args, iRSSIThreshold);
	args = FUNC2(args, uiSNRThreshold);
	args = FUNC2(args, uiDefaultTxPower);
	FUNC0(args, aiIntervalList, sizeof(UINT32) * 
		SL_SET_SCAN_PARAMS_INTERVAL_LIST_SIZE);

	// Initiate a HCI command
	FUNC3(HCI_CMND_WLAN_IOCTL_SET_SCANPARAM,
		ptr, WLAN_SET_SCAN_PARAMS_LEN);

	// Wait for command complete event
	FUNC1(HCI_CMND_WLAN_IOCTL_SET_SCANPARAM, &uiRes);

	return(uiRes);
}