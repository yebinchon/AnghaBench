
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Event; } ;
typedef TYPE_1__ SlWlanEvent_t ;


 int CLI_Write (char*,...) ;



void SimpleLinkWlanEventHandler(SlWlanEvent_t *pWlanEvent) {
  switch (pWlanEvent->Event) {
    case 129:
      CLI_Write("Connected to WiFi\r\n");
      break;
    case 128:
      CLI_Write("Disconnected WiFi\r\n");
      break;
    default:
      CLI_Write("Got Wlan event %d\r\n", pWlanEvent->Event);
      break;
  }
}
