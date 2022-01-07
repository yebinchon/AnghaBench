
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int usRxEventOpcode; } ;


 int hci_event_handler (void*,int ,int ) ;
 TYPE_1__ tSLInformation ;

void SimpleLinkWaitEvent(UINT16 usOpcode, void *pRetParams)
{


 tSLInformation.usRxEventOpcode = usOpcode;
 hci_event_handler(pRetParams, 0, 0);
}
