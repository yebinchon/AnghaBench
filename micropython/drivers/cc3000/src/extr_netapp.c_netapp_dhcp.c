
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT8 ;
typedef int INT32 ;


 int ARRAY_TO_STREAM (int *,int *,int) ;
 int EFAIL ;
 int HCI_NETAPP_DHCP ;
 int HEADERS_SIZE_CMD ;
 int NETAPP_DHCP_PARAMS_LEN ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 netapp_dhcp(UINT32 *aucIP, UINT32 *aucSubnetMask,UINT32 *aucDefaultGateway, UINT32 *aucDNSServer)
{
 INT8 scRet;
 UINT8 *ptr;
 UINT8 *args;

 scRet = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 ARRAY_TO_STREAM(args,aucIP,4);
 ARRAY_TO_STREAM(args,aucSubnetMask,4);
 ARRAY_TO_STREAM(args,aucDefaultGateway,4);
 args = UINT32_TO_STREAM(args, 0);
 ARRAY_TO_STREAM(args,aucDNSServer,4);


 hci_command_send(HCI_NETAPP_DHCP, ptr, NETAPP_DHCP_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_NETAPP_DHCP, &scRet);

 return(scRet);
}
