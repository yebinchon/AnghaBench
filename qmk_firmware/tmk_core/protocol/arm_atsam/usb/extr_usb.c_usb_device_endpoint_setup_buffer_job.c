
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_17__ {TYPE_7__* DeviceEndpoint; } ;
struct usb_module {TYPE_8__ DEVICE; struct usb_module* hw; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_18__ {TYPE_5__* usb_endpoint_table; } ;
struct TYPE_15__ {int reg; } ;
struct TYPE_16__ {TYPE_6__ EPSTATUSCLR; } ;
struct TYPE_14__ {TYPE_4__* DeviceDescBank; } ;
struct TYPE_11__ {int MULTI_PACKET_SIZE; scalar_t__ BYTE_COUNT; } ;
struct TYPE_12__ {TYPE_2__ bit; } ;
struct TYPE_10__ {scalar_t__ reg; } ;
struct TYPE_13__ {TYPE_3__ PCKSIZE; TYPE_1__ ADDR; } ;


 int Assert (struct usb_module*) ;
 int STATUS_OK ;
 int USB_DEVICE_EPSTATUSCLR_BK0RDY ;
 TYPE_9__ usb_descriptor_table ;

enum status_code usb_device_endpoint_setup_buffer_job(struct usb_module *module_inst, uint8_t *pbuf) {

    Assert(module_inst);
    Assert(module_inst->hw);


    usb_descriptor_table.usb_endpoint_table[0].DeviceDescBank[0].ADDR.reg = (uint32_t)pbuf;
    usb_descriptor_table.usb_endpoint_table[0].DeviceDescBank[0].PCKSIZE.bit.MULTI_PACKET_SIZE = 8;
    usb_descriptor_table.usb_endpoint_table[0].DeviceDescBank[0].PCKSIZE.bit.BYTE_COUNT = 0;
    module_inst->hw->DEVICE.DeviceEndpoint[0].EPSTATUSCLR.reg = USB_DEVICE_EPSTATUSCLR_BK0RDY;

    return STATUS_OK;
}
