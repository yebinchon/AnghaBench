
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_module {TYPE_4__* hw; } ;
struct TYPE_7__ {TYPE_2__* DeviceEndpoint; } ;
struct TYPE_8__ {TYPE_3__ DEVICE; } ;
struct TYPE_5__ {int reg; } ;
struct TYPE_6__ {TYPE_1__ EPSTATUSSET; } ;


 int USB_DEVICE_EPSTATUSSET_STALLRQ0 ;
 int USB_DEVICE_EPSTATUSSET_STALLRQ1 ;
 int USB_EP_ADDR_MASK ;
 int USB_EP_DIR_IN ;

void usb_device_endpoint_set_halt(struct usb_module *module_inst, uint8_t ep) {
    uint8_t ep_num = ep & USB_EP_ADDR_MASK;


    if (ep & USB_EP_DIR_IN) {
        module_inst->hw->DEVICE.DeviceEndpoint[ep_num].EPSTATUSSET.reg = USB_DEVICE_EPSTATUSSET_STALLRQ1;
    } else {
        module_inst->hw->DEVICE.DeviceEndpoint[ep_num].EPSTATUSSET.reg = USB_DEVICE_EPSTATUSSET_STALLRQ0;
    }
}
