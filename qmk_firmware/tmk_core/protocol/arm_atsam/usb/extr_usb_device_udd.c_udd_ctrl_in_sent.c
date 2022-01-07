
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ wLength; } ;
struct TYPE_4__ {scalar_t__ payload_size; scalar_t__ payload; int (* over_under_run ) () ;TYPE_1__ req; } ;


 int UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP ;
 scalar_t__ USB_DEVICE_EP_CTRL_SIZE ;
 int stub1 () ;
 int udd_ctrl_buffer ;
 scalar_t__ udd_ctrl_payload_nb_trans ;
 scalar_t__ udd_ctrl_prev_payload_nb_trans ;
 int udd_ep_control_state ;
 TYPE_2__ udd_g_ctrlreq ;
 int usb_device ;
 int usb_device_endpoint_setup_buffer_job (int *,int ) ;
 int usb_device_endpoint_write_buffer_job (int *,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void udd_ctrl_in_sent(void) {
    static bool b_shortpacket = 0;
    uint16_t nb_remain;

    nb_remain = udd_g_ctrlreq.payload_size - udd_ctrl_payload_nb_trans;

    if (0 == nb_remain) {

        udd_ctrl_prev_payload_nb_trans += udd_ctrl_payload_nb_trans;
        if ((udd_g_ctrlreq.req.wLength == udd_ctrl_prev_payload_nb_trans) || b_shortpacket) {


            udd_ep_control_state = UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP;
            usb_device_endpoint_setup_buffer_job(&usb_device, udd_ctrl_buffer);
            return;
        }

        if ((!udd_g_ctrlreq.over_under_run) || (!udd_g_ctrlreq.over_under_run())) {


        } else {

            udd_ctrl_payload_nb_trans = 0;
            nb_remain = udd_g_ctrlreq.payload_size;
        }
    }


    if (nb_remain >= USB_DEVICE_EP_CTRL_SIZE) {
        nb_remain = USB_DEVICE_EP_CTRL_SIZE;
        b_shortpacket = 0;
    } else {
        b_shortpacket = 1;
    }


    usb_device_endpoint_write_buffer_job(&usb_device, 0, udd_g_ctrlreq.payload + udd_ctrl_payload_nb_trans, nb_remain);

    udd_ctrl_payload_nb_trans += nb_remain;
}
