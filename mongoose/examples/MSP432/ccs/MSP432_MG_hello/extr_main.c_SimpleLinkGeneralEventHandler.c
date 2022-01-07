
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sender; int status; } ;
struct TYPE_6__ {TYPE_1__ deviceEvent; } ;
struct TYPE_7__ {TYPE_2__ EventData; } ;
typedef TYPE_3__ SlDeviceEvent_t ;


 int LL_ERROR ;
 int LOG (int ,char*) ;

void SimpleLinkGeneralEventHandler(SlDeviceEvent_t *e) {
  LOG(LL_ERROR, ("status %d sender %d", e->EventData.deviceEvent.status,
                 e->EventData.deviceEvent.sender));
}
