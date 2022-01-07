
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int reg; } ;
struct TYPE_4__ {TYPE_1__ FSMSTATUS; } ;
struct usb_module {TYPE_2__ DEVICE; struct usb_module* hw; } ;


 int Assert (struct usb_module*) ;

__attribute__((used)) static inline uint8_t usb_get_state_machine_status(struct usb_module *module_inst) {

    Assert(module_inst);
    Assert(module_inst->hw);

    return module_inst->hw->DEVICE.FSMSTATUS.reg;
}
