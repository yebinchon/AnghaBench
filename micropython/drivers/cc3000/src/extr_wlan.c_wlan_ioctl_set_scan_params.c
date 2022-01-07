
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;


 int ARRAY_TO_STREAM (int *,int*,int) ;
 int HCI_CMND_WLAN_IOCTL_SET_SCANPARAM ;
 int HEADERS_SIZE_CMD ;
 int SL_SET_SCAN_PARAMS_INTERVAL_LIST_SIZE ;
 int SimpleLinkWaitEvent (int ,int*) ;
 int * UINT32_TO_STREAM (int *,int) ;
 int WLAN_SET_SCAN_PARAMS_LEN ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_ioctl_set_scan_params(UINT32 uiEnable, UINT32 uiMinDwellTime,
 UINT32 uiMaxDwellTime,
 UINT32 uiNumOfProbeRequests,
 UINT32 uiChannelMask,INT32 iRSSIThreshold,
 UINT32 uiSNRThreshold,
 UINT32 uiDefaultTxPower,
 UINT32 *aiIntervalList)
{
 UINT32 uiRes;
 UINT8 *ptr;
 UINT8 *args;

 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, 36);
 args = UINT32_TO_STREAM(args, uiEnable);
 args = UINT32_TO_STREAM(args, uiMinDwellTime);
 args = UINT32_TO_STREAM(args, uiMaxDwellTime);
 args = UINT32_TO_STREAM(args, uiNumOfProbeRequests);
 args = UINT32_TO_STREAM(args, uiChannelMask);
 args = UINT32_TO_STREAM(args, iRSSIThreshold);
 args = UINT32_TO_STREAM(args, uiSNRThreshold);
 args = UINT32_TO_STREAM(args, uiDefaultTxPower);
 ARRAY_TO_STREAM(args, aiIntervalList, sizeof(UINT32) *
  SL_SET_SCAN_PARAMS_INTERVAL_LIST_SIZE);


 hci_command_send(HCI_CMND_WLAN_IOCTL_SET_SCANPARAM,
  ptr, WLAN_SET_SCAN_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_IOCTL_SET_SCANPARAM, &uiRes);

 return(uiRes);
}
