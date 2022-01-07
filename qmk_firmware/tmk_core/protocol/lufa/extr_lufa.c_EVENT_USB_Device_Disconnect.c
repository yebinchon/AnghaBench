
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_IsInitialized ;
 int print (char*) ;

void EVENT_USB_Device_Disconnect(void) {
    print("[D]");

    USB_IsInitialized = 0;







}
