
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct usb_module* usb_device_callback_t ;
struct usb_module {int device_registered_callback_mask; struct usb_module** device_callback; } ;
typedef enum usb_device_callback { ____Placeholder_usb_device_callback } usb_device_callback ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int Assert (struct usb_module*) ;
 int STATUS_OK ;
 int * _usb_device_irq_bits ;

enum status_code usb_device_register_callback(struct usb_module *module_inst, enum usb_device_callback callback_type, usb_device_callback_t callback_func) {

    Assert(module_inst);
    Assert(callback_func);


    module_inst->device_callback[callback_type] = callback_func;


    module_inst->device_registered_callback_mask |= _usb_device_irq_bits[callback_type];

    return STATUS_OK;
}
