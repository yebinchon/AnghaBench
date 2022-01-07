
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_module {int dummy; } ;


 int UDC_SOF_EVENT () ;
 int udc_sof_notify () ;

__attribute__((used)) static void _usb_on_sof_notify(struct usb_module *module_inst, void *pointer) {
    udc_sof_notify();



}
