
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int usEventOrDataReceived; int * pucReceivedData; } ;


 int hci_unsolicited_event_handler () ;
 TYPE_1__ tSLInformation ;

void SpiReceiveHandler(void *pvBuffer)
{
 tSLInformation.usEventOrDataReceived = 1;
 tSLInformation.pucReceivedData = (UINT8 *)pvBuffer;

 hci_unsolicited_event_handler();
}
