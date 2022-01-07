
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wLength; int bRequest; } ;
struct TYPE_4__ {TYPE_1__ req; } ;







 scalar_t__ USB_REQ_RECIP_DEVICE ;
 scalar_t__ USB_REQ_RECIP_ENDPOINT ;
 scalar_t__ USB_REQ_RECIP_INTERFACE ;





 scalar_t__ Udd_setup_is_in () ;
 scalar_t__ Udd_setup_recipient () ;
 int udc_req_std_dev_clear_feature () ;
 int udc_req_std_dev_get_configuration () ;
 int udc_req_std_dev_get_descriptor () ;
 int udc_req_std_dev_get_status () ;
 int udc_req_std_dev_set_address () ;
 int udc_req_std_dev_set_configuration () ;
 int udc_req_std_dev_set_feature () ;
 int udc_req_std_ep_clear_feature () ;
 int udc_req_std_ep_get_status () ;
 int udc_req_std_ep_set_feature () ;
 int udc_req_std_iface_get_setting () ;
 int udc_req_std_iface_set_setting () ;
 TYPE_2__ udd_g_ctrlreq ;

__attribute__((used)) static bool udc_reqstd(void) {
    if (Udd_setup_is_in()) {

        if (udd_g_ctrlreq.req.wLength == 0) {
            return 0;
        }

        if (USB_REQ_RECIP_DEVICE == Udd_setup_recipient()) {

            switch (udd_g_ctrlreq.req.bRequest) {
                case 133:
                    return udc_req_std_dev_get_status();
                case 135:
                    return udc_req_std_dev_get_descriptor();
                case 136:
                    return udc_req_std_dev_get_configuration();
                default:
                    break;
            }
        }

        if (USB_REQ_RECIP_INTERFACE == Udd_setup_recipient()) {

            switch (udd_g_ctrlreq.req.bRequest) {
                case 134:
                    return udc_req_std_iface_get_setting();
                default:
                    break;
            }
        }
    } else {

        if (USB_REQ_RECIP_DEVICE == Udd_setup_recipient()) {

            switch (udd_g_ctrlreq.req.bRequest) {
                case 132:
                    return udc_req_std_dev_set_address();
                case 137:
                    return udc_req_std_dev_clear_feature();
                case 129:
                    return udc_req_std_dev_set_feature();
                case 131:
                    return udc_req_std_dev_set_configuration();
                case 130:

                    break;
                default:
                    break;
            }
        }

        if (USB_REQ_RECIP_INTERFACE == Udd_setup_recipient()) {

            switch (udd_g_ctrlreq.req.bRequest) {
                case 128:
                    return udc_req_std_iface_set_setting();
                default:
                    break;
            }
        }
    }
    return 0;
}
