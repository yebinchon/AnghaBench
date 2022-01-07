
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wValue; int wIndex; scalar_t__ wLength; } ;
struct TYPE_4__ {int callback; TYPE_1__ req; } ;


 int CPU_TO_LE16 (int ) ;
 int UDC_REMOTEWAKEUP_ENABLE () ;


 int USB_DEV_STATUS_REMOTEWAKEUP ;





 int udc_device_status ;
 int udc_reset () ;
 TYPE_2__ udd_g_ctrlreq ;
 int udd_is_high_speed () ;
 int udd_test_mode_j ;
 int udd_test_mode_k ;
 int udd_test_mode_packet ;
 int udd_test_mode_se0_nak ;

__attribute__((used)) static bool udc_req_std_dev_set_feature(void) {
    if (udd_g_ctrlreq.req.wLength) {
        return 0;
    }

    switch (udd_g_ctrlreq.req.wValue) {
        case 134:

            udc_device_status |= CPU_TO_LE16(USB_DEV_STATUS_REMOTEWAKEUP);
            UDC_REMOTEWAKEUP_ENABLE();
            return 1;
        default:
            break;
    }
    return 0;
}
