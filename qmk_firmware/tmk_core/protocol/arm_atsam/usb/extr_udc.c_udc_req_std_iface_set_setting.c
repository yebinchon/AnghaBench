
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int wIndex; int wValue; scalar_t__ wLength; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int udc_iface_disable (int) ;
 int udc_iface_enable (int,int) ;
 int udc_num_configuration ;
 TYPE_2__ udd_g_ctrlreq ;

__attribute__((used)) static bool udc_req_std_iface_set_setting(void) {
    uint8_t iface_num, setting_num;

    if (udd_g_ctrlreq.req.wLength) {
        return 0;
    }
    if (!udc_num_configuration) {
        return 0;
    }

    iface_num = udd_g_ctrlreq.req.wIndex & 0xFF;
    setting_num = udd_g_ctrlreq.req.wValue & 0xFF;


    if (!udc_iface_disable(iface_num)) {
        return 0;
    }


    return udc_iface_enable(iface_num, setting_num);
}
