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
typedef  int UINT16 ;
struct TYPE_2__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;
typedef  int INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  HCI_CMND_WLAN_IOCTL_ADD_PROFILE ; 
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int WLAN_ADD_PROFILE_NOSEC_PARAM_LEN ; 
 int WLAN_ADD_PROFILE_WEP_PARAM_LEN ; 
 int WLAN_ADD_PROFILE_WPA_PARAM_LEN ; 
#define  WLAN_SEC_UNSEC 131 
#define  WLAN_SEC_WEP 130 
#define  WLAN_SEC_WPA 129 
#define  WLAN_SEC_WPA2 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC5(UINT32 ulSecType, 
	UINT8* ucSsid,
	UINT32 ulSsidLen, 
	UINT8 *ucBssid,
	UINT32 ulPriority,
	UINT32 ulPairwiseCipher_Or_TxKeyLen,
	UINT32 ulGroupCipher_TxKeyIndex,
	UINT32 ulKeyMgmt,
	UINT8* ucPf_OrKey,
	UINT32 ulPassPhraseLen)
{
	UINT16 arg_len=0;
	INT32 ret;
	UINT8 *ptr;
	INT32 i = 0;
	UINT8 *args;
	UINT8 bssid_zero[] = {0, 0, 0, 0, 0, 0};

	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_CMD);

	args = FUNC3(args, ulSecType);

	// Setup arguments in accordance with the security type
	switch (ulSecType)
	{
		//OPEN
	case WLAN_SEC_UNSEC:
		{
			args = FUNC3(args, 0x00000014);
			args = FUNC3(args, ulSsidLen);
			args = FUNC2(args, 0);
			if(ucBssid)
			{
				FUNC0(args, ucBssid, ETH_ALEN);
			}
			else
			{
				FUNC0(args, bssid_zero, ETH_ALEN);
			}
			args = FUNC3(args, ulPriority);
			FUNC0(args, ucSsid, ulSsidLen);

			arg_len = WLAN_ADD_PROFILE_NOSEC_PARAM_LEN + ulSsidLen;
		}
		break;

		//WEP
	case WLAN_SEC_WEP:
		{
			args = FUNC3(args, 0x00000020);
			args = FUNC3(args, ulSsidLen);
			args = FUNC2(args, 0);
			if(ucBssid)
			{
				FUNC0(args, ucBssid, ETH_ALEN);
			}
			else
			{
				FUNC0(args, bssid_zero, ETH_ALEN);
			}
			args = FUNC3(args, ulPriority);
			args = FUNC3(args, 0x0000000C + ulSsidLen);
			args = FUNC3(args, ulPairwiseCipher_Or_TxKeyLen);
			args = FUNC3(args, ulGroupCipher_TxKeyIndex);
			FUNC0(args, ucSsid, ulSsidLen);

			for(i = 0; i < 4; i++)
			{
				UINT8 *p = &ucPf_OrKey[i * ulPairwiseCipher_Or_TxKeyLen];

				FUNC0(args, p, ulPairwiseCipher_Or_TxKeyLen);
			}		

			arg_len = WLAN_ADD_PROFILE_WEP_PARAM_LEN + ulSsidLen + 
				ulPairwiseCipher_Or_TxKeyLen * 4;

		}
		break;

		//WPA
		//WPA2
	case WLAN_SEC_WPA:
	case WLAN_SEC_WPA2:
		{
			args = FUNC3(args, 0x00000028);
			args = FUNC3(args, ulSsidLen);
			args = FUNC2(args, 0);
			if(ucBssid)
			{
				FUNC0(args, ucBssid, ETH_ALEN);
			}
			else
			{
				FUNC0(args, bssid_zero, ETH_ALEN);
			}
			args = FUNC3(args, ulPriority);
			args = FUNC3(args, ulPairwiseCipher_Or_TxKeyLen);
			args = FUNC3(args, ulGroupCipher_TxKeyIndex);
			args = FUNC3(args, ulKeyMgmt);
			args = FUNC3(args, 0x00000008 + ulSsidLen);
			args = FUNC3(args, ulPassPhraseLen);
			FUNC0(args, ucSsid, ulSsidLen);
			FUNC0(args, ucPf_OrKey, ulPassPhraseLen);

			arg_len = WLAN_ADD_PROFILE_WPA_PARAM_LEN + ulSsidLen + ulPassPhraseLen;
		}

		break;
	}    

	// Initiate a HCI command
	FUNC4(HCI_CMND_WLAN_IOCTL_ADD_PROFILE,
		ptr, arg_len);

	// Wait for command complete event
	FUNC1(HCI_CMND_WLAN_IOCTL_ADD_PROFILE, &ret);

	return(ret);
}