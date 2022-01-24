#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct usb_module {int dummy; } ;
struct usb_device_endpoint_config {int ep_size; } ;
typedef  enum usb_endpoint_size { ____Placeholder_usb_endpoint_size } usb_endpoint_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDD_EPCTRL_SETUP ; 
 int /*<<< orphan*/  USB_DEVICE_ENDPOINT_CALLBACK_RXSTP ; 
 int /*<<< orphan*/  USB_DEVICE_ENDPOINT_CALLBACK_TRCPT ; 
 int /*<<< orphan*/  USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL ; 
 int /*<<< orphan*/  USB_DEVICE_EP_CTRL_SIZE ; 
 int /*<<< orphan*/  USB_DEVICE_LPM_ACK ; 
 int /*<<< orphan*/  _usb_ep0_on_setup ; 
 int /*<<< orphan*/  _usb_ep0_on_tansfer_fail ; 
 int /*<<< orphan*/  _usb_ep0_on_tansfer_ok ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  udd_ctrl_buffer ; 
 int /*<<< orphan*/  udd_ep_control_state ; 
 int /*<<< orphan*/  FUNC3 (struct usb_module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device_endpoint_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_module*,struct usb_device_endpoint_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_module*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct usb_module *module_inst) {
    /* USB Device Endpoint0 Configuration */
    struct usb_device_endpoint_config config_ep0;

    FUNC4(&config_ep0);
    config_ep0.ep_size = (enum usb_endpoint_size)(32 - FUNC2(((uint32_t)FUNC1(FUNC0(USB_DEVICE_EP_CTRL_SIZE, 8), 1024) << 1) - 1) - 1 - 3);
    FUNC6(module_inst, &config_ep0);

    FUNC7(module_inst, udd_ctrl_buffer);

    FUNC5(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_RXSTP, _usb_ep0_on_setup);
    FUNC5(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRCPT, _usb_ep0_on_tansfer_ok);
    FUNC5(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL, _usb_ep0_on_tansfer_fail);
    FUNC3(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_RXSTP);
    FUNC3(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRCPT);
    FUNC3(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL);

#ifdef USB_DEVICE_LPM_SUPPORT
    // Enable LPM feature
    usb_device_set_lpm_mode(module_inst, USB_DEVICE_LPM_ACK);
#endif

    udd_ep_control_state = UDD_EPCTRL_SETUP;
}