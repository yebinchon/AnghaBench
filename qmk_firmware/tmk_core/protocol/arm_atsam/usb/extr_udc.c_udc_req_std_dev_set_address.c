
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wLength; } ;
struct TYPE_4__ {int callback; TYPE_1__ req; } ;


 int udc_valid_address ;
 TYPE_2__ udd_g_ctrlreq ;

__attribute__((used)) static bool udc_req_std_dev_set_address(void) {
    if (udd_g_ctrlreq.req.wLength) {
        return 0;
    }



    udd_g_ctrlreq.callback = udc_valid_address;
    return 1;
}
