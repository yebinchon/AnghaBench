
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wValue; int wIndex; scalar_t__ wLength; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 scalar_t__ USB_EP_FEATURE_HALT ;
 int udd_ep_clear_halt (int) ;
 TYPE_2__ udd_g_ctrlreq ;

__attribute__((used)) static bool udc_req_std_ep_clear_feature(void) {
    if (udd_g_ctrlreq.req.wLength) {
        return 0;
    }

    if (udd_g_ctrlreq.req.wValue == USB_EP_FEATURE_HALT) {
        return udd_ep_clear_halt(udd_g_ctrlreq.req.wIndex & 0xFF);
    }
    return 0;
}
