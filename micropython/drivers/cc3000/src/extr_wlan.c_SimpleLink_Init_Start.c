
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;


 int HCI_CMND_SIMPLE_LINK_START ;
 int HEADERS_SIZE_CMD ;
 int SL_PATCHES_REQUEST_DEFAULT ;
 int SL_PATCHES_REQUEST_FORCE_NONE ;
 int SimpleLinkWaitEvent (int ,int ) ;
 int UINT8_TO_STREAM (int *,int ) ;
 int WLAN_SL_INIT_START_PARAMS_LEN ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

__attribute__((used)) static void SimpleLink_Init_Start(UINT16 usPatchesAvailableAtHost)
{
 UINT8 *ptr;
 UINT8 *args;

 ptr = tSLInformation.pucTxCommandBuffer;
 args = (UINT8 *)(ptr + HEADERS_SIZE_CMD);

 UINT8_TO_STREAM(args, ((usPatchesAvailableAtHost) ? SL_PATCHES_REQUEST_FORCE_NONE : SL_PATCHES_REQUEST_DEFAULT));


 hci_command_send(HCI_CMND_SIMPLE_LINK_START, ptr, WLAN_SL_INIT_START_PARAMS_LEN);

 SimpleLinkWaitEvent(HCI_CMND_SIMPLE_LINK_START, 0);
}
