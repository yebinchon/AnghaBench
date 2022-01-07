
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Event; } ;
typedef TYPE_1__ SlWlanEvent_t ;




 int SYS_PRINT (char*,...) ;

void SimpleLinkWlanEventHandler(SlWlanEvent_t *pWlanEvent) {
  switch (pWlanEvent->Event) {
    case 129:
      SYS_PRINT("Connected to WiFi\r\n");
      break;
    case 128:
      SYS_PRINT("Disconnected WiFi\r\n");
      break;
    default:
      SYS_PRINT("Got Wlan event %d\r\n", pWlanEvent->Event);
      break;
  }
}
