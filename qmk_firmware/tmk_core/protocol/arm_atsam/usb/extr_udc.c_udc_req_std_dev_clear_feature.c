
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ wValue; scalar_t__ wLength; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int CPU_TO_LE16 (int ) ;
 int UDC_REMOTEWAKEUP_DISABLE () ;
 scalar_t__ USB_DEV_FEATURE_REMOTE_WAKEUP ;
 scalar_t__ USB_DEV_STATUS_REMOTEWAKEUP ;
 int udc_device_status ;
 TYPE_2__ udd_g_ctrlreq ;

__attribute__((used)) static bool udc_req_std_dev_clear_feature(void) {
    if (udd_g_ctrlreq.req.wLength) {
        return 0;
    }

    if (udd_g_ctrlreq.req.wValue == USB_DEV_FEATURE_REMOTE_WAKEUP) {
        udc_device_status &= CPU_TO_LE16(~(uint32_t)USB_DEV_STATUS_REMOTEWAKEUP);

        UDC_REMOTEWAKEUP_DISABLE();

        return 1;
    }
    return 0;
}
