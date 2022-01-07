
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_module {TYPE_3__* hw; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_5__ {TYPE_1__ CTRLB; } ;
struct TYPE_6__ {TYPE_2__ DEVICE; } ;


 int USB_DEVICE_CTRLB_UPRSM ;

__attribute__((used)) static inline void usb_device_send_remote_wake_up(struct usb_module *module_inst) { module_inst->hw->DEVICE.CTRLB.reg |= USB_DEVICE_CTRLB_UPRSM; }
