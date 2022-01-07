
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ event_hdr ;
typedef int UINT32 ;
struct TYPE_2__ {int* (* sDriverPatches ) (int *) ;int* (* sFWPatches ) (int *) ;int* (* sBootLoaderPatches ) (int *) ;int pucTxCommandBuffer; } ;
typedef int CHAR ;


 scalar_t__ HCI_EVENT_HEADER_SIZE ;



 int hci_patch_send (int const,int ,int*,int ) ;
 int* stub1 (int *) ;
 int* stub2 (int *) ;
 int* stub3 (int *) ;
 TYPE_1__ tSLInformation ;

void hci_unsol_handle_patch_request(CHAR *event_hdr)
{
 CHAR *params = (CHAR *)(event_hdr) + HCI_EVENT_HEADER_SIZE;
 UINT32 ucLength = 0;
 CHAR *patch;

 switch (*params)
 {
 case 129:

  if (tSLInformation.sDriverPatches)
  {
   patch = tSLInformation.sDriverPatches(&ucLength);

   if (patch)
   {
    hci_patch_send(129,
     tSLInformation.pucTxCommandBuffer, patch, ucLength);
    return;
   }
  }


  hci_patch_send(129,
   tSLInformation.pucTxCommandBuffer, 0, 0);
  break;

 case 128:

  if (tSLInformation.sFWPatches)
  {
   patch = tSLInformation.sFWPatches(&ucLength);


   if (patch)
   {
    hci_patch_send(128,
     tSLInformation.pucTxCommandBuffer, patch, ucLength);
    return;
   }
  }


  hci_patch_send(128,
   tSLInformation.pucTxCommandBuffer, 0, 0);
  break;

 case 130:

  if (tSLInformation.sBootLoaderPatches)
  {
   patch = tSLInformation.sBootLoaderPatches(&ucLength);

   if (patch)
   {
    hci_patch_send(130,
     tSLInformation.pucTxCommandBuffer, patch, ucLength);
    return;
   }
  }


  hci_patch_send(130,
   tSLInformation.pucTxCommandBuffer, 0, 0);
  break;
 }
}
