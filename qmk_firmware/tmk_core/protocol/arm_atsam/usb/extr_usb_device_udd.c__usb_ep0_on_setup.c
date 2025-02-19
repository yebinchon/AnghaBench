
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_module {int dummy; } ;
struct usb_endpoint_callback_parameter {int received_bytes; } ;
struct TYPE_3__ {scalar_t__ wLength; } ;
struct TYPE_4__ {TYPE_1__ req; int (* callback ) () ;} ;


 scalar_t__ UDD_EPCTRL_DATA_IN ;
 scalar_t__ UDD_EPCTRL_DATA_OUT ;
 scalar_t__ UDD_EPCTRL_SETUP ;
 int USB_DEVICE_EP_CTRL_SIZE ;
 scalar_t__ Udd_setup_is_in () ;
 int stub1 () ;
 int udc_process_setup () ;
 int udd_ctrl_buffer ;
 int udd_ctrl_fetch_ram () ;
 int udd_ctrl_in_sent () ;
 scalar_t__ udd_ctrl_payload_nb_trans ;
 scalar_t__ udd_ctrl_prev_payload_nb_trans ;
 int udd_ctrl_send_zlp_in () ;
 int udd_ctrl_stall_data () ;
 scalar_t__ udd_ep_control_state ;
 TYPE_2__ udd_g_ctrlreq ;
 int usb_device ;
 int usb_device_endpoint_read_buffer_job (int *,int ,int ,int ) ;

__attribute__((used)) static void _usb_ep0_on_setup(struct usb_module *module_inst, void *pointer) {
    struct usb_endpoint_callback_parameter *ep_callback_para = (struct usb_endpoint_callback_parameter *)pointer;

    if (UDD_EPCTRL_SETUP != udd_ep_control_state) {
        if (((void*)0) != udd_g_ctrlreq.callback) {
            udd_g_ctrlreq.callback();
        }
        udd_ep_control_state = UDD_EPCTRL_SETUP;
    }
    if (8 != ep_callback_para->received_bytes) {
        udd_ctrl_stall_data();
        return;
    } else {
        udd_ctrl_fetch_ram();
        if (0 == udc_process_setup()) {
            udd_ctrl_stall_data();
            return;
        } else if (Udd_setup_is_in()) {
            udd_ctrl_prev_payload_nb_trans = 0;
            udd_ctrl_payload_nb_trans = 0;
            udd_ep_control_state = UDD_EPCTRL_DATA_IN;
            usb_device_endpoint_read_buffer_job(&usb_device, 0, udd_ctrl_buffer, USB_DEVICE_EP_CTRL_SIZE);
            udd_ctrl_in_sent();
        } else {
            if (0 == udd_g_ctrlreq.req.wLength) {
                udd_ctrl_send_zlp_in();
                return;
            } else {
                udd_ctrl_prev_payload_nb_trans = 0;
                udd_ctrl_payload_nb_trans = 0;
                udd_ep_control_state = UDD_EPCTRL_DATA_OUT;

                usb_device_endpoint_read_buffer_job(&usb_device, 0, udd_ctrl_buffer, USB_DEVICE_EP_CTRL_SIZE);
            }
        }
    }
}
