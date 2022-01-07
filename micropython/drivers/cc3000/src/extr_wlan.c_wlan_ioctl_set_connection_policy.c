
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
 int HCI_CMND_WLAN_IOCTL_SET_CONNECTION_POLICY ;
 int HEADERS_SIZE_CMD ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int WLAN_SET_CONNECTION_POLICY_PARAMS_LEN ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_ioctl_set_connection_policy(UINT32 should_connect_to_open_ap,
 UINT32 ulShouldUseFastConnect,
 UINT32 ulUseProfiles)
{
 INT32 ret;
 UINT8 *ptr;
 UINT8 *args;

 ret = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (UINT8 *)(ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, should_connect_to_open_ap);
 args = UINT32_TO_STREAM(args, ulShouldUseFastConnect);
 args = UINT32_TO_STREAM(args, ulUseProfiles);


 hci_command_send(HCI_CMND_WLAN_IOCTL_SET_CONNECTION_POLICY,
  ptr, WLAN_SET_CONNECTION_POLICY_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_IOCTL_SET_CONNECTION_POLICY, &ret);

 return(ret);
}
