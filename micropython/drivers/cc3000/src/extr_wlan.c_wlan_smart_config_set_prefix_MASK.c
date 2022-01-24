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
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFAIL ; 
 int /*<<< orphan*/  HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX ; 
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  SL_SIMPLE_CONFIG_PREFIX_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC3(CHAR* cNewPrefix)
{
	INT32 ret;
	UINT8 *ptr;
	UINT8 *args;

	ret = EFAIL;
	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_CMD);

	if (cNewPrefix == NULL)
		return ret;
	else	// with the new Smart Config, prefix must be TTT
	{
		*cNewPrefix = 'T';
		*(cNewPrefix + 1) = 'T';
		*(cNewPrefix + 2) = 'T';
	}

	FUNC0(args, cNewPrefix, SL_SIMPLE_CONFIG_PREFIX_LENGTH);

	FUNC2(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX, ptr, 
		SL_SIMPLE_CONFIG_PREFIX_LENGTH);

	// Wait for command complete event
	FUNC1(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX, &ret);

	return(ret);    
}