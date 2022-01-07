
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ip; } ;
struct TYPE_5__ {TYPE_3__ ipAcquiredV4; } ;
struct TYPE_6__ {scalar_t__ Event; TYPE_1__ EventData; } ;
typedef TYPE_2__ SlNetAppEvent_t ;
typedef TYPE_3__ SlIpV4AcquiredAsync_t ;


 int LL_INFO ;
 int LOG (int ,char*) ;
 int SL_IPV4_BYTE (int ,int) ;
 scalar_t__ SL_NETAPP_IPV4_IPACQUIRED_EVENT ;
 scalar_t__ SL_NETAPP_IP_LEASED_EVENT ;
 int ip_acquired ;

void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *e) {
  if (e->Event == SL_NETAPP_IPV4_IPACQUIRED_EVENT) {
    SlIpV4AcquiredAsync_t *ed = &e->EventData.ipAcquiredV4;
    LOG(LL_INFO, ("IP acquired: %lu.%lu.%lu.%lu", SL_IPV4_BYTE(ed->ip, 3),
                  SL_IPV4_BYTE(ed->ip, 2), SL_IPV4_BYTE(ed->ip, 1),
                  SL_IPV4_BYTE(ed->ip, 0)));
    ip_acquired = 1;
  } else if (e->Event == SL_NETAPP_IP_LEASED_EVENT) {
    LOG(LL_INFO, ("IP leased"));
  } else {
    LOG(LL_INFO, ("NetApp event %d", e->Event));
  }
}
