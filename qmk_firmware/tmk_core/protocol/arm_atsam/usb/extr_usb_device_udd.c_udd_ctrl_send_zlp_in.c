
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int payload; } ;


 int UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP ;
 int udd_ctrl_buffer ;
 int udd_ep_control_state ;
 TYPE_1__ udd_g_ctrlreq ;
 int usb_device ;
 int usb_device_endpoint_setup_buffer_job (int *,int ) ;
 int usb_device_endpoint_write_buffer_job (int *,int ,int ,int ) ;

__attribute__((used)) static void udd_ctrl_send_zlp_in(void) {
    udd_ep_control_state = UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP;
    usb_device_endpoint_setup_buffer_job(&usb_device, udd_ctrl_buffer);
    usb_device_endpoint_write_buffer_job(&usb_device, 0, udd_g_ctrlreq.payload, 0);
}
