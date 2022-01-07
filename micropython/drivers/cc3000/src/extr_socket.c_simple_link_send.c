
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBsdReadReturnParams ;
typedef int sockaddr ;
typedef int sd ;
typedef int len ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int* pucTxCommandBuffer; int NumberOfSentPackets; } ;
typedef int INT32 ;
typedef int INT16 ;


 int ARRAY_TO_STREAM (int*,int*,int) ;


 int HCI_CMND_SEND_ARG_LENGTH ;
 int HCI_EVNT_SEND ;
 int HCI_EVNT_SENDTO ;
 int HEADERS_SIZE_DATA ;
 int HostFlowControlConsumeBuff (int) ;
 int SOCKET_SENDTO_PARAMS_LEN ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int* UINT32_TO_STREAM (int*,int) ;
 int hci_data_send (int,int*,int,int,int*,int) ;
 TYPE_1__ tSLInformation ;

__attribute__((used)) static INT16 simple_link_send(INT32 sd, const void *buf, INT32 len, INT32 flags,
 const sockaddr *to, INT32 tolen, INT32 opcode)
{
 UINT8 uArgSize=0, addrlen;
 UINT8 *ptr, *pDataPtr=0, *args;
 UINT32 addr_offset=0;
 INT16 res;
 tBsdReadReturnParams tSocketSendEvent;


 if (0 != (res = HostFlowControlConsumeBuff(sd)))
 {
  return res;
 }


 tSLInformation.NumberOfSentPackets++;


 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_DATA);


 switch(opcode)
 {
 case 128:
  {
   addr_offset = len + sizeof(len) + sizeof(len);
   addrlen = 8;
   uArgSize = SOCKET_SENDTO_PARAMS_LEN;
   pDataPtr = ptr + HEADERS_SIZE_DATA + SOCKET_SENDTO_PARAMS_LEN;
   break;
  }

 case 129:
  {
   tolen = 0;
   to = ((void*)0);
   uArgSize = HCI_CMND_SEND_ARG_LENGTH;
   pDataPtr = ptr + HEADERS_SIZE_DATA + HCI_CMND_SEND_ARG_LENGTH;
   break;
  }

 default:
  {
   break;
  }
 }


 args = UINT32_TO_STREAM(args, sd);
 args = UINT32_TO_STREAM(args, uArgSize - sizeof(sd));
 args = UINT32_TO_STREAM(args, len);
 args = UINT32_TO_STREAM(args, flags);

 if (opcode == 128)
 {
  args = UINT32_TO_STREAM(args, addr_offset);
  args = UINT32_TO_STREAM(args, addrlen);
 }


 ARRAY_TO_STREAM(pDataPtr, ((UINT8 *)buf), len);


 if (opcode == 128)
 {
  ARRAY_TO_STREAM(pDataPtr, ((UINT8 *)to), tolen);
 }


 hci_data_send(opcode, ptr, uArgSize, len,(UINT8*)to, tolen);

 if (opcode == 128)
  SimpleLinkWaitEvent(HCI_EVNT_SENDTO, &tSocketSendEvent);
 else
  SimpleLinkWaitEvent(HCI_EVNT_SEND, &tSocketSendEvent);

 return (len);
}
