
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Event; } ;
typedef TYPE_1__ SlWlanEvent_t ;


 int LL_INFO ;
 int LOG (int ,char*) ;




void SimpleLinkWlanEventHandler(SlWlanEvent_t *e) {
  switch (e->Event) {
    case 130:
      LOG(LL_INFO, ("WiFi: connected, getting IP"));
      break;
    case 129:
      LOG(LL_INFO, ("WiFi: station connected"));
      break;
    case 128:
      LOG(LL_INFO, ("WiFi: station disconnected"));
      break;
    default:
      LOG(LL_INFO, ("WiFi: event %d", (int) e->Event));
  }
}
