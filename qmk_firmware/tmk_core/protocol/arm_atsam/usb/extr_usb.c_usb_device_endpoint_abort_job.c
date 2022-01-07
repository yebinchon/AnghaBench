
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_module {TYPE_5__* hw; } ;
struct TYPE_12__ {int reg; } ;
struct TYPE_10__ {TYPE_3__* DeviceEndpoint; } ;
struct TYPE_11__ {TYPE_4__ DEVICE; } ;
struct TYPE_8__ {int reg; } ;
struct TYPE_7__ {int reg; } ;
struct TYPE_9__ {TYPE_2__ EPINTFLAG; TYPE_1__ EPSTATUSSET; TYPE_6__ EPSTATUSCLR; } ;


 int USB_DEVICE_EPINTFLAG_TRCPT0 ;
 int USB_DEVICE_EPINTFLAG_TRCPT1 ;
 int USB_DEVICE_EPSTATUSCLR_BK1RDY ;
 int USB_DEVICE_EPSTATUSSET_BK0RDY ;
 int USB_EP_ADDR_MASK ;
 int USB_EP_DIR_IN ;

void usb_device_endpoint_abort_job(struct usb_module *module_inst, uint8_t ep) {
    uint8_t ep_num;
    ep_num = ep & USB_EP_ADDR_MASK;


    if (ep & USB_EP_DIR_IN) {
        module_inst->hw->DEVICE.DeviceEndpoint[ep_num].EPSTATUSCLR.reg = USB_DEVICE_EPSTATUSCLR_BK1RDY;

        module_inst->hw->DEVICE.DeviceEndpoint[ep_num].EPINTFLAG.reg = USB_DEVICE_EPINTFLAG_TRCPT1;
    } else {
        module_inst->hw->DEVICE.DeviceEndpoint[ep_num].EPSTATUSSET.reg = USB_DEVICE_EPSTATUSSET_BK0RDY;

        module_inst->hw->DEVICE.DeviceEndpoint[ep_num].EPINTFLAG.reg = USB_DEVICE_EPINTFLAG_TRCPT0;
    }
}
