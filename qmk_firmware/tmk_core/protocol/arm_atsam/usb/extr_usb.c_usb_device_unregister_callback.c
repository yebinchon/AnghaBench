
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_module {int device_registered_callback_mask; int ** device_callback; } ;
typedef enum usb_device_callback { ____Placeholder_usb_device_callback } usb_device_callback ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int Assert (struct usb_module*) ;
 int STATUS_OK ;
 int * _usb_device_irq_bits ;

enum status_code usb_device_unregister_callback(struct usb_module *module_inst, enum usb_device_callback callback_type) {

    Assert(module_inst);


    module_inst->device_callback[callback_type] = ((void*)0);


    module_inst->device_registered_callback_mask &= ~_usb_device_irq_bits[callback_type];

    return STATUS_OK;
}
