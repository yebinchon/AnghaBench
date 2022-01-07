
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDD_EPCTRL_STALL_REQ ;
 int USB_EP_DIR_IN ;
 int USB_EP_DIR_OUT ;
 int udd_ep_control_state ;
 int usb_device ;
 int usb_device_endpoint_clear_halt (int *,int ) ;
 int usb_device_endpoint_set_halt (int *,int ) ;

__attribute__((used)) static void udd_ctrl_stall_data(void) {
    udd_ep_control_state = UDD_EPCTRL_STALL_REQ;

    usb_device_endpoint_set_halt(&usb_device, USB_EP_DIR_IN);
    usb_device_endpoint_clear_halt(&usb_device, USB_EP_DIR_OUT);
}
