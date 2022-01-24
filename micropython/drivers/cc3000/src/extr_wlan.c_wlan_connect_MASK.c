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
typedef  int /*<<< orphan*/  CHAR ;
typedef  int CC3000_EXPORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int EFAIL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  HCI_CMND_WLAN_CONNECT ; 
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ WLAN_CONNECT_PARAM_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC5(UINT32 ulSecType, CHAR *ssid, INT32 ssid_len,
	UINT8 *bssid, UINT8 *key, INT32 key_len)
{
	INT32 ret;
	UINT8 *ptr;
	UINT8 *args;
	UINT8 bssid_zero[] = {0, 0, 0, 0, 0, 0};

	ret  	= EFAIL;
	ptr  	= tSLInformation.pucTxCommandBuffer;
	args 	= (ptr + HEADERS_SIZE_CMD);

	// Fill in command buffer
	args = FUNC3(args, 0x0000001c);
	args = FUNC3(args, ssid_len);
	args = FUNC3(args, ulSecType);
	args = FUNC3(args, 0x00000010 + ssid_len);
	args = FUNC3(args, key_len);
	args = FUNC2(args, 0);

	// padding shall be zeroed
	if(bssid)
	{
		FUNC0(args, bssid, ETH_ALEN);
	}
	else
	{
		FUNC0(args, bssid_zero, ETH_ALEN);
	}

	FUNC0(args, ssid, ssid_len);

	if(key_len && key)
	{
		FUNC0(args, key, key_len);
	}

	// Initiate a HCI command
	FUNC4(HCI_CMND_WLAN_CONNECT, ptr, WLAN_CONNECT_PARAM_LEN + 
		ssid_len + key_len - 1);

	// Wait for command complete event
	FUNC1(HCI_CMND_WLAN_CONNECT, &ret);
	CC3000_EXPORT(errno) = ret;

	return(ret);
}