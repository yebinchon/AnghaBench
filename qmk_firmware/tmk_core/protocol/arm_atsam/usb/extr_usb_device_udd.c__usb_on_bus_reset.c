
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_module {int dummy; } ;


 int udc_reset () ;
 int udd_ctrl_ep_enable (struct usb_module*) ;
 int usb_device_set_address (struct usb_module*,int ) ;

__attribute__((used)) static void _usb_on_bus_reset(struct usb_module *module_inst, void *pointer) {

    udc_reset();
    usb_device_set_address(module_inst, 0);
    udd_ctrl_ep_enable(module_inst);
}
