
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_module {int dummy; } ;
struct usb_device_endpoint_config {int ep_size; } ;
typedef enum usb_endpoint_size { ____Placeholder_usb_endpoint_size } usb_endpoint_size ;


 int Max (int ,int) ;
 scalar_t__ Min (int ,int) ;
 int UDD_EPCTRL_SETUP ;
 int USB_DEVICE_ENDPOINT_CALLBACK_RXSTP ;
 int USB_DEVICE_ENDPOINT_CALLBACK_TRCPT ;
 int USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL ;
 int USB_DEVICE_EP_CTRL_SIZE ;
 int USB_DEVICE_LPM_ACK ;
 int _usb_ep0_on_setup ;
 int _usb_ep0_on_tansfer_fail ;
 int _usb_ep0_on_tansfer_ok ;
 int clz (int) ;
 int udd_ctrl_buffer ;
 int udd_ep_control_state ;
 int usb_device_endpoint_enable_callback (struct usb_module*,int ,int ) ;
 int usb_device_endpoint_get_config_defaults (struct usb_device_endpoint_config*) ;
 int usb_device_endpoint_register_callback (struct usb_module*,int ,int ,int ) ;
 int usb_device_endpoint_set_config (struct usb_module*,struct usb_device_endpoint_config*) ;
 int usb_device_endpoint_setup_buffer_job (struct usb_module*,int ) ;
 int usb_device_set_lpm_mode (struct usb_module*,int ) ;

__attribute__((used)) static void udd_ctrl_ep_enable(struct usb_module *module_inst) {

    struct usb_device_endpoint_config config_ep0;

    usb_device_endpoint_get_config_defaults(&config_ep0);
    config_ep0.ep_size = (enum usb_endpoint_size)(32 - clz(((uint32_t)Min(Max(USB_DEVICE_EP_CTRL_SIZE, 8), 1024) << 1) - 1) - 1 - 3);
    usb_device_endpoint_set_config(module_inst, &config_ep0);

    usb_device_endpoint_setup_buffer_job(module_inst, udd_ctrl_buffer);

    usb_device_endpoint_register_callback(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_RXSTP, _usb_ep0_on_setup);
    usb_device_endpoint_register_callback(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRCPT, _usb_ep0_on_tansfer_ok);
    usb_device_endpoint_register_callback(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL, _usb_ep0_on_tansfer_fail);
    usb_device_endpoint_enable_callback(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_RXSTP);
    usb_device_endpoint_enable_callback(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRCPT);
    usb_device_endpoint_enable_callback(module_inst, 0, USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL);






    udd_ep_control_state = UDD_EPCTRL_SETUP;
}
