
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pusNumberOfHandles ;
typedef scalar_t__ UINT16 ;
struct TYPE_2__ {int NumberOfReleasedPackets; int usNumberOfFreeBuffers; } ;
typedef scalar_t__ INT32 ;
typedef int CHAR ;


 scalar_t__ ESUCCESS ;
 int FLOW_CONTROL_EVENT_FREE_BUFFS_OFFSET ;
 int FLOW_CONTROL_EVENT_SIZE ;
 int HCI_EVENT_HEADER_SIZE ;
 int STREAM_TO_UINT16 (int *,int,scalar_t__) ;
 TYPE_1__ tSLInformation ;

INT32 hci_event_unsol_flowcontrol_handler(CHAR *pEvent)
{

 INT32 temp, value;
 UINT16 i;
 UINT16 pusNumberOfHandles=0;
 CHAR *pReadPayload;

 STREAM_TO_UINT16((CHAR *)pEvent,HCI_EVENT_HEADER_SIZE,pusNumberOfHandles);
 pReadPayload = ((CHAR *)pEvent +
  HCI_EVENT_HEADER_SIZE + sizeof(pusNumberOfHandles));
 temp = 0;

 for(i = 0; i < pusNumberOfHandles ; i++)
 {
  STREAM_TO_UINT16(pReadPayload, FLOW_CONTROL_EVENT_FREE_BUFFS_OFFSET, value);
  temp += value;
  pReadPayload += FLOW_CONTROL_EVENT_SIZE;
 }

 tSLInformation.usNumberOfFreeBuffers += temp;
 tSLInformation.NumberOfReleasedPackets += temp;

 return(ESUCCESS);
}
