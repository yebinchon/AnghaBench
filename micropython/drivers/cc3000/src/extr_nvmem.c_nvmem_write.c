
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
 int HCI_CMND_NVMEM_WRITE ;
 int HCI_DATA_CMD_HEADER_SIZE ;
 int HCI_EVNT_NVMEM_WRITE ;
 int NVMEM_WRITE_PARAMS_LEN ;
 int SPI_HEADER_SIZE ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int) ;
 int hci_data_command_send (int ,int *,int,int) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__ tSLInformation ;

INT32 nvmem_write(UINT32 ulFileId, UINT32 ulLength, UINT32 ulEntryOffset, UINT8 *buff)
{
 INT32 iRes;
 UINT8 *ptr;
 UINT8 *args;

 iRes = EFAIL;

 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + SPI_HEADER_SIZE + HCI_DATA_CMD_HEADER_SIZE);


 args = UINT32_TO_STREAM(args, ulFileId);
 args = UINT32_TO_STREAM(args, 12);
 args = UINT32_TO_STREAM(args, ulLength);
 args = UINT32_TO_STREAM(args, ulEntryOffset);

 memcpy((ptr + SPI_HEADER_SIZE + HCI_DATA_CMD_HEADER_SIZE +
  NVMEM_WRITE_PARAMS_LEN),buff,ulLength);


 hci_data_command_send(HCI_CMND_NVMEM_WRITE, ptr, NVMEM_WRITE_PARAMS_LEN,
  ulLength);

 SimpleLinkWaitEvent(HCI_EVNT_NVMEM_WRITE, &iRes);

 return(iRes);
}
