
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {TYPE_2__** udi_apis; TYPE_1__* desc; } ;
struct TYPE_5__ {int (* sof_notify ) () ;} ;
struct TYPE_4__ {size_t bNumInterfaces; } ;


 int stub1 () ;
 scalar_t__ udc_num_configuration ;
 TYPE_3__* udc_ptr_conf ;

void udc_sof_notify(void) {
    uint8_t iface_num;

    if (udc_num_configuration) {
        for (iface_num = 0; iface_num < udc_ptr_conf->desc->bNumInterfaces; iface_num++) {
            if (udc_ptr_conf->udi_apis[iface_num]->sof_notify != ((void*)0)) {
                udc_ptr_conf->udi_apis[iface_num]->sof_notify();
            }
        }
    }
}
