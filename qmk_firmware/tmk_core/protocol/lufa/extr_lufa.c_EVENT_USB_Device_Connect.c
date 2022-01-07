
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_Device_EnableSOFEvents () ;
 int USB_Disable () ;
 int USB_Init () ;
 int USB_IsInitialized ;
 int print (char*) ;

void EVENT_USB_Device_Connect(void) {
    print("[C]");

    if (!USB_IsInitialized) {
        USB_Disable();
        USB_Init();
        USB_Device_EnableSOFEvents();
    }
}
