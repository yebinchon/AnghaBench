
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Event; } ;
typedef TYPE_1__ SlNetAppEvent_t ;


 int CLI_Write (char*,...) ;

 int ssConnectedWLAN ;
 int state ;

void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *pNetAppEvent) {
  switch (pNetAppEvent->Event) {
    case 128:
      CLI_Write("Got IP\r\n");
      state = ssConnectedWLAN;
      break;
    default:
      CLI_Write("Got NetApp Event: %d\r\n", pNetAppEvent->Event);
      break;
  }
}
