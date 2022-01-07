
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;


 int EFAIL ;
 int HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_START ;
 int HEADERS_SIZE_CMD ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int WLAN_SMART_CONFIG_START_PARAMS_LEN ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_smart_config_start(UINT32 algoEncryptedFlag)
{
 INT32 ret;
 UINT8 *ptr;
 UINT8 *args;

 ret = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (UINT8 *)(ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, algoEncryptedFlag);
 ret = EFAIL;

 hci_command_send(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_START, ptr,
  WLAN_SMART_CONFIG_START_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_START, &ret);

 return(ret);
}
