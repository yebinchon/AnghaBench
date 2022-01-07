
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;
typedef int CHAR ;
typedef int CC3000_EXPORT ;


 int ARRAY_TO_STREAM (int *,int *,int) ;
 int EFAIL ;
 int ETH_ALEN ;
 int HCI_CMND_WLAN_CONNECT ;
 int HEADERS_SIZE_CMD ;
 int SimpleLinkWaitEvent (int ,int*) ;
 int * UINT16_TO_STREAM (int *,int ) ;
 int * UINT32_TO_STREAM (int *,int) ;
 scalar_t__ WLAN_CONNECT_PARAM_LEN ;
 int hci_command_send (int ,int *,scalar_t__) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_connect(UINT32 ulSecType, CHAR *ssid, INT32 ssid_len,
 UINT8 *bssid, UINT8 *key, INT32 key_len)
{
 INT32 ret;
 UINT8 *ptr;
 UINT8 *args;
 UINT8 bssid_zero[] = {0, 0, 0, 0, 0, 0};

 ret = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, 0x0000001c);
 args = UINT32_TO_STREAM(args, ssid_len);
 args = UINT32_TO_STREAM(args, ulSecType);
 args = UINT32_TO_STREAM(args, 0x00000010 + ssid_len);
 args = UINT32_TO_STREAM(args, key_len);
 args = UINT16_TO_STREAM(args, 0);


 if(bssid)
 {
  ARRAY_TO_STREAM(args, bssid, ETH_ALEN);
 }
 else
 {
  ARRAY_TO_STREAM(args, bssid_zero, ETH_ALEN);
 }

 ARRAY_TO_STREAM(args, ssid, ssid_len);

 if(key_len && key)
 {
  ARRAY_TO_STREAM(args, key, key_len);
 }


 hci_command_send(HCI_CMND_WLAN_CONNECT, ptr, WLAN_CONNECT_PARAM_LEN +
  ssid_len + key_len - 1);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_CONNECT, &ret);
 CC3000_EXPORT(errno) = ret;

 return(ret);
}
