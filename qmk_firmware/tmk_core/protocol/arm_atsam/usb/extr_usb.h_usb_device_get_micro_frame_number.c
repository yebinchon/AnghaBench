
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct usb_module {TYPE_3__* hw; } ;
struct TYPE_4__ {scalar_t__ reg; } ;
struct TYPE_5__ {TYPE_1__ FNUM; } ;
struct TYPE_6__ {TYPE_2__ DEVICE; } ;



__attribute__((used)) static inline uint16_t usb_device_get_micro_frame_number(struct usb_module *module_inst) { return ((uint16_t)(module_inst->hw->DEVICE.FNUM.reg)); }
