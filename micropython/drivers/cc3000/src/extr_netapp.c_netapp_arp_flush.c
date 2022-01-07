
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT8 ;
typedef int INT32 ;


 int EFAIL ;
 int HCI_NETAPP_ARP_FLUSH ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 netapp_arp_flush(void)
{
 INT8 scRet;
 UINT8 *ptr;

 scRet = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;


 hci_command_send(HCI_NETAPP_ARP_FLUSH, ptr, 0);


 SimpleLinkWaitEvent(HCI_NETAPP_ARP_FLUSH, &scRet);

 return(scRet);
}
