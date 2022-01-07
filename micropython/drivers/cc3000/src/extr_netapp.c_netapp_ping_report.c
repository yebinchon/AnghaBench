
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT8 ;


 int EFAIL ;
 int HCI_NETAPP_PING_REPORT ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

void netapp_ping_report()
{
 UINT8 *ptr;
 ptr = tSLInformation.pucTxCommandBuffer;
 INT8 scRet;

 scRet = EFAIL;


 hci_command_send(HCI_NETAPP_PING_REPORT, ptr, 0);


 SimpleLinkWaitEvent(HCI_NETAPP_PING_REPORT, &scRet);
}
