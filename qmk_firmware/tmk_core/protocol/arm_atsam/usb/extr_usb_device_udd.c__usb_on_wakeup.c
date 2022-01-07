
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_module {int dummy; } ;


 int UDC_RESUME_EVENT () ;
 int UDD_STATE_IDLE ;
 int USB_DEVICE_CALLBACK_LPMSUSP ;
 int USB_DEVICE_CALLBACK_SUSPEND ;
 int USB_DEVICE_CALLBACK_WAKEUP ;
 int _usb_device_lpm_suspend ;
 int udd_sleep_mode (int ) ;
 int udd_wait_clock_ready () ;
 int usb_device ;
 int usb_device_disable_callback (int *,int ) ;
 int usb_device_enable_callback (int *,int ) ;
 int usb_device_register_callback (int *,int ,int ) ;

__attribute__((used)) static void _usb_on_wakeup(struct usb_module *module_inst, void *pointer) {
    udd_wait_clock_ready();

    usb_device_disable_callback(&usb_device, USB_DEVICE_CALLBACK_WAKEUP);
    usb_device_enable_callback(&usb_device, USB_DEVICE_CALLBACK_SUSPEND);




    udd_sleep_mode(UDD_STATE_IDLE);



}
