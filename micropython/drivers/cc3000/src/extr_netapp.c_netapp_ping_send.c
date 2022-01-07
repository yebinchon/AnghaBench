
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


 int EFAIL ;
 int HCI_NETAPP_PING_SEND ;
 int HEADERS_SIZE_CMD ;
 int NETAPP_PING_SEND_PARAMS_LEN ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32
 netapp_ping_send(UINT32 *ip, UINT32 ulPingAttempts, UINT32 ulPingSize, UINT32 ulPingTimeout)
{
 INT8 scRet;
 UINT8 *ptr, *args;

 scRet = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, *ip);
 args = UINT32_TO_STREAM(args, ulPingAttempts);
 args = UINT32_TO_STREAM(args, ulPingSize);
 args = UINT32_TO_STREAM(args, ulPingTimeout);


 hci_command_send(HCI_NETAPP_PING_SEND, ptr, NETAPP_PING_SEND_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_NETAPP_PING_SEND, &scRet);

 return(scRet);
}
