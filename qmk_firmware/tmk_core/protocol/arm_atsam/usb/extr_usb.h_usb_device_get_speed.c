
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_module {TYPE_3__* hw; } ;
typedef enum usb_speed { ____Placeholder_usb_speed } usb_speed ;
struct TYPE_4__ {int reg; } ;
struct TYPE_5__ {TYPE_1__ STATUS; } ;
struct TYPE_6__ {TYPE_2__ DEVICE; } ;


 int USB_DEVICE_STATUS_SPEED_Msk ;
 int USB_SPEED_FULL ;
 int USB_SPEED_LOW ;

__attribute__((used)) static inline enum usb_speed usb_device_get_speed(struct usb_module *module_inst) {
    if (!(module_inst->hw->DEVICE.STATUS.reg & USB_DEVICE_STATUS_SPEED_Msk)) {
        return USB_SPEED_FULL;
    } else {
        return USB_SPEED_LOW;
    }
}
