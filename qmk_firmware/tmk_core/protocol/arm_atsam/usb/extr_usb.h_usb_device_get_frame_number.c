
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct usb_module {TYPE_4__* hw; } ;
struct TYPE_5__ {scalar_t__ FNUM; } ;
struct TYPE_6__ {TYPE_1__ bit; } ;
struct TYPE_7__ {TYPE_2__ FNUM; } ;
struct TYPE_8__ {TYPE_3__ DEVICE; } ;



__attribute__((used)) static inline uint16_t usb_device_get_frame_number(struct usb_module *module_inst) { return ((uint16_t)(module_inst->hw->DEVICE.FNUM.bit.FNUM)); }
