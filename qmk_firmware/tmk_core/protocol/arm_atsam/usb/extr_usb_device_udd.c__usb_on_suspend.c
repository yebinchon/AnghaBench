
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_module {int dummy; } ;


 int UDC_SUSPEND_EVENT () ;
 int UDD_STATE_SUSPEND ;
 int USB_DEVICE_CALLBACK_SUSPEND ;
 int USB_DEVICE_CALLBACK_WAKEUP ;
 int udd_sleep_mode (int ) ;
 int usb_device ;
 int usb_device_disable_callback (int *,int ) ;
 int usb_device_enable_callback (int *,int ) ;

__attribute__((used)) static void _usb_on_suspend(struct usb_module *module_inst, void *pointer) {
    usb_device_disable_callback(&usb_device, USB_DEVICE_CALLBACK_SUSPEND);
    usb_device_enable_callback(&usb_device, USB_DEVICE_CALLBACK_WAKEUP);
    udd_sleep_mode(UDD_STATE_SUSPEND);



}
