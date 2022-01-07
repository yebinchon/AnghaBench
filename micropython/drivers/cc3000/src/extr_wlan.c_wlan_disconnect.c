
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;
typedef int CC3000_EXPORT ;


 int EFAIL ;
 int HCI_CMND_WLAN_DISCONNECT ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_disconnect()
{
 INT32 ret;
 UINT8 *ptr;

 ret = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;

 hci_command_send(HCI_CMND_WLAN_DISCONNECT, ptr, 0);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_DISCONNECT, &ret);
 CC3000_EXPORT(errno) = ret;

 return(ret);
}
