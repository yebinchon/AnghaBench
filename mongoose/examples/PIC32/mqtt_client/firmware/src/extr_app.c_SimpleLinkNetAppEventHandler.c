
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int Event; } ;
typedef TYPE_1__ SlNetAppEvent_t ;


 int APP_STATE_CONNECT_BROKER ;

 int SYS_PRINT (char*,...) ;
 TYPE_2__ appData ;

void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *pNetAppEvent) {
  switch (pNetAppEvent->Event) {
    case 128:
      SYS_PRINT("Got IP\r\n");
      appData.state = APP_STATE_CONNECT_BROKER;
      break;
    default:
      SYS_PRINT("Got NetApp Event: %d\r\n", pNetAppEvent->Event);
      break;
  }
}
