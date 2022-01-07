
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_module {TYPE_3__* hw; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_5__ {TYPE_1__ DADD; } ;
struct TYPE_6__ {TYPE_2__ DEVICE; } ;


 int USB_DEVICE_DADD_ADDEN ;

__attribute__((used)) static inline void usb_device_set_address(struct usb_module *module_inst, uint8_t address) { module_inst->hw->DEVICE.DADD.reg = USB_DEVICE_DADD_ADDEN | address; }
