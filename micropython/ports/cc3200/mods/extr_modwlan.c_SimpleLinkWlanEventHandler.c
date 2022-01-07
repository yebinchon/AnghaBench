
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct TYPE_4__ {int Event; } ;
typedef TYPE_1__ SlWlanEvent_t ;


 int CLR_STATUS_BIT (int ,int ) ;
 int SET_STATUS_BIT (int ,int ) ;







 int STATUS_BIT_CONNECTION ;
 int STATUS_BIT_IP_ACQUIRED ;
 int servers_reset () ;
 int servers_wlan_cycle_power () ;
 TYPE_2__ wlan_obj ;

void SimpleLinkWlanEventHandler(SlWlanEvent_t *pWlanEvent) {
    if (!pWlanEvent) {
        return;
    }

    switch(pWlanEvent->Event)
    {
        case 133:
        {





            SET_STATUS_BIT(wlan_obj.status, STATUS_BIT_CONNECTION);





        }
            break;
        case 132:
            CLR_STATUS_BIT(wlan_obj.status, STATUS_BIT_CONNECTION);
            CLR_STATUS_BIT(wlan_obj.status, STATUS_BIT_IP_ACQUIRED);




            break;
        case 129:
        {





            SET_STATUS_BIT(wlan_obj.status, STATUS_BIT_CONNECTION);





        }
            break;
        case 128:
            CLR_STATUS_BIT(wlan_obj.status, STATUS_BIT_CONNECTION);




            break;
        case 131:

            break;
        case 130:

            break;
        case 134:

            break;
        default:
            break;
    }
}
