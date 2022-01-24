#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_module {int dummy; } ;
struct usb_endpoint_callback_parameter {int received_bytes; } ;
struct TYPE_3__ {scalar_t__ wLength; } ;
struct TYPE_4__ {TYPE_1__ req; int /*<<< orphan*/  (* callback ) () ;} ;

/* Variables and functions */
 scalar_t__ UDD_EPCTRL_DATA_IN ; 
 scalar_t__ UDD_EPCTRL_DATA_OUT ; 
 scalar_t__ UDD_EPCTRL_SETUP ; 
 int /*<<< orphan*/  USB_DEVICE_EP_CTRL_SIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  udd_ctrl_buffer ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ udd_ctrl_payload_nb_trans ; 
 scalar_t__ udd_ctrl_prev_payload_nb_trans ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ udd_ep_control_state ; 
 TYPE_2__ udd_g_ctrlreq ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct usb_module *module_inst, void *pointer) {
    struct usb_endpoint_callback_parameter *ep_callback_para = (struct usb_endpoint_callback_parameter *)pointer;

    if (UDD_EPCTRL_SETUP != udd_ep_control_state) {
        if (NULL != udd_g_ctrlreq.callback) {
            udd_g_ctrlreq.callback();
        }
        udd_ep_control_state = UDD_EPCTRL_SETUP;
    }
    if (8 != ep_callback_para->received_bytes) {
        FUNC6();
        return;
    } else {
        FUNC3();
        if (false == FUNC2()) {
            FUNC6();
            return;
        } else if (FUNC0()) {
            udd_ctrl_prev_payload_nb_trans = 0;
            udd_ctrl_payload_nb_trans      = 0;
            udd_ep_control_state           = UDD_EPCTRL_DATA_IN;
            FUNC7(&usb_device, 0, udd_ctrl_buffer, USB_DEVICE_EP_CTRL_SIZE);
            FUNC4();
        } else {
            if (0 == udd_g_ctrlreq.req.wLength) {
                FUNC5();
                return;
            } else {
                udd_ctrl_prev_payload_nb_trans = 0;
                udd_ctrl_payload_nb_trans      = 0;
                udd_ep_control_state           = UDD_EPCTRL_DATA_OUT;
                /* Initialize buffer size and enable OUT bank */
                FUNC7(&usb_device, 0, udd_ctrl_buffer, USB_DEVICE_EP_CTRL_SIZE);
            }
        }
    }
}