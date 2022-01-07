
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_callback_parameter {int endpoint_address; } ;


 scalar_t__ UDD_EPCTRL_DATA_IN ;
 scalar_t__ UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP ;
 scalar_t__ UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP ;
 scalar_t__ udd_ep_control_state ;
 int usb_device ;
 int usb_device_endpoint_set_halt (int *,int ) ;

__attribute__((used)) static void udd_ctrl_overflow(void *pointer) {
    struct usb_endpoint_callback_parameter *ep_callback_para = (struct usb_endpoint_callback_parameter *)pointer;

    if (UDD_EPCTRL_DATA_IN == udd_ep_control_state) {


        udd_ep_control_state = UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP;
    } else if (UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP == udd_ep_control_state) {


        usb_device_endpoint_set_halt(&usb_device, ep_callback_para->endpoint_address);
    }
}
