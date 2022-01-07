
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int InformHostOnTxComplete; int * pucTxCommandBuffer; } ;
typedef int INT32 ;


 int EFAIL ;
 int HCI_CMND_EVENT_MASK ;
 int HCI_EVNT_WLAN_TX_COMPLETE ;
 int HCI_EVNT_WLAN_UNSOL_BASE ;
 int HEADERS_SIZE_CMD ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int * UINT32_TO_STREAM (int *,int) ;
 int WLAN_SET_MASK_PARAMS_LEN ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_set_event_mask(UINT32 ulMask)
{
 INT32 ret;
 UINT8 *ptr;
 UINT8 *args;


 if ((ulMask & HCI_EVNT_WLAN_TX_COMPLETE) == HCI_EVNT_WLAN_TX_COMPLETE)
 {
  tSLInformation.InformHostOnTxComplete = 0;



  if (ulMask == HCI_EVNT_WLAN_TX_COMPLETE)
  {
   return 0;
  }

  ulMask &= ~HCI_EVNT_WLAN_TX_COMPLETE;
  ulMask |= HCI_EVNT_WLAN_UNSOL_BASE;
 }
 else
 {
  tSLInformation.InformHostOnTxComplete = 1;
 }

 ret = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (UINT8 *)(ptr + HEADERS_SIZE_CMD);


 args = UINT32_TO_STREAM(args, ulMask);


 hci_command_send(HCI_CMND_EVENT_MASK,
  ptr, WLAN_SET_MASK_PARAMS_LEN);


 SimpleLinkWaitEvent(HCI_CMND_EVENT_MASK, &ret);

 return(ret);
}
