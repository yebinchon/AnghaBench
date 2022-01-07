
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int ip; int status; } ;
struct TYPE_8__ {int ip; } ;
struct TYPE_6__ {TYPE_3__ ipAcquiredV4; } ;
struct TYPE_7__ {int Event; TYPE_1__ EventData; } ;
typedef TYPE_2__ SlNetAppEvent_t ;
typedef TYPE_3__ SlIpV4AcquiredAsync_t ;


 int SET_STATUS_BIT (int ,int ) ;




 int STATUS_BIT_IP_ACQUIRED ;
 TYPE_4__ wlan_obj ;

void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *pNetAppEvent) {
    if(!pNetAppEvent) {
        return;
    }

    switch(pNetAppEvent->Event)
    {
        case 131:
        {
            SlIpV4AcquiredAsync_t *pEventData = ((void*)0);

            SET_STATUS_BIT(wlan_obj.status, STATUS_BIT_IP_ACQUIRED);


            pEventData = &pNetAppEvent->EventData.ipAcquiredV4;


            wlan_obj.ip = pEventData->ip;
        }
            break;
        case 130:
            break;
        case 129:
            break;
        case 128:
            break;
        default:
            break;
    }
}
