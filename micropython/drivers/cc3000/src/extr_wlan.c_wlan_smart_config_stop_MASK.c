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
struct TYPE_2__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;
typedef  int /*<<< orphan*/  INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  EFAIL ; 
 int /*<<< orphan*/  HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC2(void)
{
	INT32 ret;
	UINT8 *ptr;

	ret = EFAIL;
	ptr = tSLInformation.pucTxCommandBuffer;

	FUNC1(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_STOP, ptr, 0);

	// Wait for command complete event
	FUNC0(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_STOP, &ret);

	return(ret);    
}