
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_Device_EnableSOFEvents () ;
 int USB_Disable () ;
 int USB_Init () ;
 int print_set_sendchar (int ) ;
 int sendchar ;

__attribute__((used)) static void setup_usb(void) {

    USB_Disable();

    USB_Init();


    USB_Device_EnableSOFEvents();
    print_set_sendchar(sendchar);
}
