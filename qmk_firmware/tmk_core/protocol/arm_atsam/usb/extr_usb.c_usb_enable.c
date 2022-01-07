
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reg; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_6__ {TYPE_2__ SYNCBUSY; TYPE_1__ CTRLA; } ;
struct usb_module {TYPE_3__ DEVICE; struct usb_module* hw; } ;


 int Assert (struct usb_module*) ;
 int USB_CTRLA_ENABLE ;
 scalar_t__ USB_SYNCBUSY_ENABLE ;

void usb_enable(struct usb_module *module_inst) {
    Assert(module_inst);
    Assert(module_inst->hw);

    module_inst->hw->DEVICE.CTRLA.reg |= USB_CTRLA_ENABLE;
    while (module_inst->hw->DEVICE.SYNCBUSY.reg == USB_SYNCBUSY_ENABLE)
        ;
}
