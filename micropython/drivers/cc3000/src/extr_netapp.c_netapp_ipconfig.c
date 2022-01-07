
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tNetappIpconfigRetArgs ;
typedef int UINT8 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;


 int HCI_NETAPP_IPCONFIG ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

void netapp_ipconfig( tNetappIpconfigRetArgs * ipconfig )
{
 UINT8 *ptr;

 ptr = tSLInformation.pucTxCommandBuffer;


 hci_command_send(HCI_NETAPP_IPCONFIG, ptr, 0);


 SimpleLinkWaitEvent(HCI_NETAPP_IPCONFIG, ipconfig );

}
