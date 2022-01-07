
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_module {TYPE_4__* hw; } ;
typedef enum usb_device_lpm_mode { ____Placeholder_usb_device_lpm_mode } usb_device_lpm_mode ;
struct TYPE_5__ {int LPMHDSK; } ;
struct TYPE_6__ {TYPE_1__ bit; } ;
struct TYPE_7__ {TYPE_2__ CTRLB; } ;
struct TYPE_8__ {TYPE_3__ DEVICE; } ;



__attribute__((used)) static inline void usb_device_set_lpm_mode(struct usb_module *module_inst, enum usb_device_lpm_mode lpm_mode) { module_inst->hw->DEVICE.CTRLB.bit.LPMHDSK = lpm_mode; }
