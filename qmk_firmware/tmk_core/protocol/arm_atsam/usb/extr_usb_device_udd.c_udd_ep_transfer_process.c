
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udd_ep_id_t ;
struct usb_module {int dummy; } ;
struct usb_endpoint_callback_parameter {int endpoint_address; } ;


 int USB_EP_DIR_IN ;
 int udd_ep_trans_in_next (void*) ;
 int udd_ep_trans_out_next (void*) ;

__attribute__((used)) static void udd_ep_transfer_process(struct usb_module *module_inst, void *pointer) {
    struct usb_endpoint_callback_parameter *ep_callback_para = (struct usb_endpoint_callback_parameter *)pointer;
    udd_ep_id_t ep = ep_callback_para->endpoint_address;

    if (ep & USB_EP_DIR_IN) {
        udd_ep_trans_in_next(pointer);
    } else {
        udd_ep_trans_out_next(pointer);
    }
}
