
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {scalar_t__ usEventOrDataReceived; scalar_t__* pucReceivedData; } ;
typedef int INT32 ;
typedef int CHAR ;


 scalar_t__ HCI_TYPE_EVNT ;
 int SpiResumeSpi () ;
 int hci_unsol_event_handler (int *) ;
 TYPE_1__ tSLInformation ;

INT32 hci_unsolicited_event_handler(void)
{
 UINT32 res = 0;
 UINT8 *pucReceivedData;

 if (tSLInformation.usEventOrDataReceived != 0)
 {
  pucReceivedData = (tSLInformation.pucReceivedData);

  if (*pucReceivedData == HCI_TYPE_EVNT)
  {


   if (hci_unsol_event_handler((CHAR *)pucReceivedData) == 1)
   {



    tSLInformation.usEventOrDataReceived = 0;

    res = 1;
    SpiResumeSpi();
   }
  }
 }

 return res;
}
