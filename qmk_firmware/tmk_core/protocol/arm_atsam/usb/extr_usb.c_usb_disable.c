
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ reg; } ;
struct TYPE_6__ {int reg; } ;
struct TYPE_9__ {int reg; } ;
struct TYPE_8__ {int reg; } ;
struct TYPE_10__ {TYPE_2__ SYNCBUSY; TYPE_1__ CTRLA; TYPE_4__ INTFLAG; TYPE_3__ INTENCLR; } ;
struct usb_module {TYPE_5__ DEVICE; struct usb_module* hw; } ;


 int Assert (struct usb_module*) ;
 int USB_CTRLA_ENABLE ;
 int USB_DEVICE_INTENCLR_MASK ;
 int USB_DEVICE_INTFLAG_MASK ;
 scalar_t__ USB_SYNCBUSY_ENABLE ;

void usb_disable(struct usb_module *module_inst) {
    Assert(module_inst);
    Assert(module_inst->hw);

    module_inst->hw->DEVICE.INTENCLR.reg = USB_DEVICE_INTENCLR_MASK;
    module_inst->hw->DEVICE.INTFLAG.reg = USB_DEVICE_INTFLAG_MASK;
    module_inst->hw->DEVICE.CTRLA.reg &= ~USB_CTRLA_ENABLE;
    while (module_inst->hw->DEVICE.SYNCBUSY.reg == USB_SYNCBUSY_ENABLE)
        ;
}
