
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;


 int HCI_CMND_WLAN_IOCTL_GET_SCAN_RESULTS ;
 int HEADERS_SIZE_CMD ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int ) ;
 int WLAN_GET_SCAN_RESULTS_PARAMS_LEN ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_ioctl_get_scan_results(UINT32 ulScanTimeout,
 UINT8 *ucResults)
{
 UINT8 *ptr;
 UINT8 *args;

 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, ulScanTimeout);


 hci_command_send(HCI_CMND_WLAN_IOCTL_GET_SCAN_RESULTS,
  ptr, WLAN_GET_SCAN_RESULTS_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_IOCTL_GET_SCAN_RESULTS, ucResults);

 return(0);
}
