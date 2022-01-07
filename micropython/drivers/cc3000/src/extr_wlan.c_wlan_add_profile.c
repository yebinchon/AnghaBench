
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;


 int ARRAY_TO_STREAM (int *,int *,int) ;
 int ETH_ALEN ;
 int HCI_CMND_WLAN_IOCTL_ADD_PROFILE ;
 int HEADERS_SIZE_CMD ;
 int SimpleLinkWaitEvent (int ,int*) ;
 int * UINT16_TO_STREAM (int *,int ) ;
 int * UINT32_TO_STREAM (int *,int) ;
 int WLAN_ADD_PROFILE_NOSEC_PARAM_LEN ;
 int WLAN_ADD_PROFILE_WEP_PARAM_LEN ;
 int WLAN_ADD_PROFILE_WPA_PARAM_LEN ;




 int hci_command_send (int ,int *,int) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_add_profile(UINT32 ulSecType,
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

 args = UINT32_TO_STREAM(args, ulSecType);


 switch (ulSecType)
 {

 case 131:
  {
   args = UINT32_TO_STREAM(args, 0x00000014);
   args = UINT32_TO_STREAM(args, ulSsidLen);
   args = UINT16_TO_STREAM(args, 0);
   if(ucBssid)
   {
    ARRAY_TO_STREAM(args, ucBssid, ETH_ALEN);
   }
   else
   {
    ARRAY_TO_STREAM(args, bssid_zero, ETH_ALEN);
   }
   args = UINT32_TO_STREAM(args, ulPriority);
   ARRAY_TO_STREAM(args, ucSsid, ulSsidLen);

   arg_len = WLAN_ADD_PROFILE_NOSEC_PARAM_LEN + ulSsidLen;
  }
  break;


 case 130:
  {
   args = UINT32_TO_STREAM(args, 0x00000020);
   args = UINT32_TO_STREAM(args, ulSsidLen);
   args = UINT16_TO_STREAM(args, 0);
   if(ucBssid)
   {
    ARRAY_TO_STREAM(args, ucBssid, ETH_ALEN);
   }
   else
   {
    ARRAY_TO_STREAM(args, bssid_zero, ETH_ALEN);
   }
   args = UINT32_TO_STREAM(args, ulPriority);
   args = UINT32_TO_STREAM(args, 0x0000000C + ulSsidLen);
   args = UINT32_TO_STREAM(args, ulPairwiseCipher_Or_TxKeyLen);
   args = UINT32_TO_STREAM(args, ulGroupCipher_TxKeyIndex);
   ARRAY_TO_STREAM(args, ucSsid, ulSsidLen);

   for(i = 0; i < 4; i++)
   {
    UINT8 *p = &ucPf_OrKey[i * ulPairwiseCipher_Or_TxKeyLen];

    ARRAY_TO_STREAM(args, p, ulPairwiseCipher_Or_TxKeyLen);
   }

   arg_len = WLAN_ADD_PROFILE_WEP_PARAM_LEN + ulSsidLen +
    ulPairwiseCipher_Or_TxKeyLen * 4;

  }
  break;



 case 129:
 case 128:
  {
   args = UINT32_TO_STREAM(args, 0x00000028);
   args = UINT32_TO_STREAM(args, ulSsidLen);
   args = UINT16_TO_STREAM(args, 0);
   if(ucBssid)
   {
    ARRAY_TO_STREAM(args, ucBssid, ETH_ALEN);
   }
   else
   {
    ARRAY_TO_STREAM(args, bssid_zero, ETH_ALEN);
   }
   args = UINT32_TO_STREAM(args, ulPriority);
   args = UINT32_TO_STREAM(args, ulPairwiseCipher_Or_TxKeyLen);
   args = UINT32_TO_STREAM(args, ulGroupCipher_TxKeyIndex);
   args = UINT32_TO_STREAM(args, ulKeyMgmt);
   args = UINT32_TO_STREAM(args, 0x00000008 + ulSsidLen);
   args = UINT32_TO_STREAM(args, ulPassPhraseLen);
   ARRAY_TO_STREAM(args, ucSsid, ulSsidLen);
   ARRAY_TO_STREAM(args, ucPf_OrKey, ulPassPhraseLen);

   arg_len = WLAN_ADD_PROFILE_WPA_PARAM_LEN + ulSsidLen + ulPassPhraseLen;
  }

  break;
 }


 hci_command_send(HCI_CMND_WLAN_IOCTL_ADD_PROFILE,
  ptr, arg_len);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_IOCTL_ADD_PROFILE, &ret);

 return(ret);
}
