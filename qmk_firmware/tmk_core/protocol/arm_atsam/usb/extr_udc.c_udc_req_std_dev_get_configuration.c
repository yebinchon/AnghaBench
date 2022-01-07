
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int udc_num_configuration ;
 TYPE_2__ udd_g_ctrlreq ;
 int udd_set_setup_payload (int *,int) ;

__attribute__((used)) static bool udc_req_std_dev_get_configuration(void) {
    if (udd_g_ctrlreq.req.wLength != 1) {
        return 0;
    }

    udd_set_setup_payload(&udc_num_configuration, 1);
    return 1;
}
