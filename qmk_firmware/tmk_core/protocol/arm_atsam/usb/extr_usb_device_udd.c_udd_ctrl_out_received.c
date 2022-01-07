
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_endpoint_callback_parameter {scalar_t__ received_bytes; } ;
struct TYPE_3__ {scalar_t__ wLength; } ;
struct TYPE_4__ {scalar_t__ payload_size; scalar_t__ payload; int (* over_under_run ) () ;TYPE_1__ req; } ;


 int UDD_EPCTRL_STALL_REQ ;
 scalar_t__ USB_DEVICE_EP_CTRL_SIZE ;
 int memcpy (int *,int ,scalar_t__) ;
 int stub1 () ;
 int stub2 () ;
 int udd_ctrl_buffer ;
 scalar_t__ udd_ctrl_payload_nb_trans ;
 scalar_t__ udd_ctrl_prev_payload_nb_trans ;
 int udd_ctrl_send_zlp_in () ;
 int udd_ep_control_state ;
 int udd_ep_set_halt (int ) ;
 TYPE_2__ udd_g_ctrlreq ;
 int usb_device ;
 int usb_device_endpoint_read_buffer_job (int *,int ,int ,scalar_t__) ;

__attribute__((used)) static void udd_ctrl_out_received(void *pointer) {
    struct usb_endpoint_callback_parameter *ep_callback_para = (struct usb_endpoint_callback_parameter *)pointer;

    uint16_t nb_data;
    nb_data = ep_callback_para->received_bytes;

    if (udd_g_ctrlreq.payload_size < (udd_ctrl_payload_nb_trans + nb_data)) {

        nb_data = udd_g_ctrlreq.payload_size - udd_ctrl_payload_nb_trans;
    }

    memcpy((uint8_t *)(udd_g_ctrlreq.payload + udd_ctrl_payload_nb_trans), udd_ctrl_buffer, nb_data);
    udd_ctrl_payload_nb_trans += nb_data;

    if ((USB_DEVICE_EP_CTRL_SIZE != nb_data) || (udd_g_ctrlreq.req.wLength <= (udd_ctrl_prev_payload_nb_trans + udd_ctrl_payload_nb_trans))) {





        udd_g_ctrlreq.payload_size = udd_ctrl_payload_nb_trans;
        if (((void*)0) != udd_g_ctrlreq.over_under_run) {
            if (!udd_g_ctrlreq.over_under_run()) {

                udd_ep_control_state = UDD_EPCTRL_STALL_REQ;

                udd_ep_set_halt(0);

                return;
            }
        }

        udd_ctrl_send_zlp_in();
        return;
    }

    if (udd_g_ctrlreq.payload_size == udd_ctrl_payload_nb_trans) {

        if (!udd_g_ctrlreq.over_under_run) {


            udd_ep_control_state = UDD_EPCTRL_STALL_REQ;

            udd_ep_set_halt(0);
            return;
        }
        if (!udd_g_ctrlreq.over_under_run()) {


            udd_ep_control_state = UDD_EPCTRL_STALL_REQ;

            udd_ep_set_halt(0);
            return;
        }


        udd_ctrl_prev_payload_nb_trans += udd_ctrl_payload_nb_trans;


        udd_ctrl_payload_nb_trans = 0;
    }
    usb_device_endpoint_read_buffer_job(&usb_device, 0, udd_ctrl_buffer, USB_DEVICE_EP_CTRL_SIZE);
}
