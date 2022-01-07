
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
struct TYPE_4__ {TYPE_1__ INTENCLR; } ;
struct usb_module {TYPE_2__ DEVICE; struct usb_module* hw; int device_enabled_callback_mask; } ;
typedef enum usb_device_callback { ____Placeholder_usb_device_callback } usb_device_callback ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int Assert (struct usb_module*) ;
 int STATUS_OK ;
 int * _usb_device_irq_bits ;

enum status_code usb_device_disable_callback(struct usb_module *module_inst, enum usb_device_callback callback_type) {

    Assert(module_inst);
    Assert(module_inst->hw);


    module_inst->device_enabled_callback_mask &= ~_usb_device_irq_bits[callback_type];

    module_inst->hw->DEVICE.INTENCLR.reg = _usb_device_irq_bits[callback_type];

    return STATUS_OK;
}
