
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int usRxDataPending; } ;


 int hci_event_handler (int *,int *,int *) ;
 TYPE_1__ tSLInformation ;

void SimpleLinkWaitData(UINT8 *pBuf, UINT8 *from, UINT8 *fromlen)
{


 tSLInformation.usRxDataPending = 1;
 hci_event_handler(pBuf, from, fromlen);
}
