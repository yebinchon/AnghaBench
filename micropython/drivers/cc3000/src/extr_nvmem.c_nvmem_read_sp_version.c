
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;


 int HCI_CMND_READ_SP_VERSION ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

UINT8 nvmem_read_sp_version(UINT8* patchVer)
{
 UINT8 *ptr;

 UINT8 retBuf[5];

 ptr = tSLInformation.pucTxCommandBuffer;


 hci_command_send(HCI_CMND_READ_SP_VERSION, ptr, 0);
 SimpleLinkWaitEvent(HCI_CMND_READ_SP_VERSION, retBuf);


 *patchVer = retBuf[3];

 *(patchVer+1) = retBuf[4];

 return(retBuf[0]);
}
