
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_module {int dummy; } ;
struct TYPE_2__ {int (* callback ) () ;} ;


 scalar_t__ UDD_EPCTRL_DATA_IN ;
 scalar_t__ UDD_EPCTRL_DATA_OUT ;
 scalar_t__ UDD_EPCTRL_SETUP ;
 int stub1 () ;
 int udd_ctrl_in_sent () ;
 int udd_ctrl_out_received (void*) ;
 scalar_t__ udd_ep_control_state ;
 TYPE_1__ udd_g_ctrlreq ;

__attribute__((used)) static void _usb_ep0_on_tansfer_ok(struct usb_module *module_inst, void *pointer) {
    if (UDD_EPCTRL_DATA_OUT == udd_ep_control_state) {
        udd_ctrl_out_received(pointer);
    } else if (UDD_EPCTRL_DATA_IN == udd_ep_control_state) {
        udd_ctrl_in_sent();
    } else {
        if (((void*)0) != udd_g_ctrlreq.callback) {
            udd_g_ctrlreq.callback();
        }
        udd_ep_control_state = UDD_EPCTRL_SETUP;
    }
}
