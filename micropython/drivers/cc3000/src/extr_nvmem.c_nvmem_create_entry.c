
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;


 int HCI_CMND_NVMEM_CREATE_ENTRY ;
 int HEADERS_SIZE_CMD ;
 int NVMEM_CREATE_PARAMS_LEN ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 nvmem_create_entry(UINT32 ulFileId, UINT32 ulNewLen)
{
 UINT8 *ptr;
 UINT8 *args;
 UINT8 retval;

 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, ulFileId);
 args = UINT32_TO_STREAM(args, ulNewLen);


 hci_command_send(HCI_CMND_NVMEM_CREATE_ENTRY,ptr, NVMEM_CREATE_PARAMS_LEN);

 SimpleLinkWaitEvent(HCI_CMND_NVMEM_CREATE_ENTRY, &retval);

 return(retval);
}
