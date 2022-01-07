
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iNumberOfBytes; } ;
typedef TYPE_1__ tBsdReadReturnParams ;
typedef int socklen_t ;
typedef int sockaddr ;
typedef int UINT8 ;
struct TYPE_5__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;
typedef scalar_t__ INT16 ;
typedef scalar_t__ CC3000_EXPORT ;


 int HEADERS_SIZE_CMD ;
 int SOCKET_RECV_FROM_PARAMS_LEN ;
 int SimpleLinkWaitData (void*,int *,int *) ;
 int SimpleLinkWaitEvent (int ,TYPE_1__*) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_2__ tSLInformation ;

__attribute__((used)) static INT16 simple_link_recv(INT32 sd, void *buf, INT32 len, INT32 flags, sockaddr *from,
 socklen_t *fromlen, INT32 opcode)
{
 UINT8 *ptr, *args;
 tBsdReadReturnParams tSocketReadEvent;

 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, sd);
 args = UINT32_TO_STREAM(args, len);
 args = UINT32_TO_STREAM(args, flags);


 hci_command_send(opcode, ptr, SOCKET_RECV_FROM_PARAMS_LEN);


 SimpleLinkWaitEvent(opcode, &tSocketReadEvent);


 if (tSocketReadEvent.iNumberOfBytes > 0)
 {


  SimpleLinkWaitData(buf, (UINT8 *)from, (UINT8 *)fromlen);
 }

 CC3000_EXPORT(errno) = tSocketReadEvent.iNumberOfBytes;

 return(tSocketReadEvent.iNumberOfBytes);
}
