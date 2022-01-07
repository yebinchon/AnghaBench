
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {scalar_t__ bNumInterfaces; } ;


 int CPU_TO_LE16 (int ) ;
 int UDC_REMOTEWAKEUP_DISABLE () ;
 int USB_DEV_STATUS_BUS_POWERED ;
 int USB_DEV_STATUS_REMOTEWAKEUP ;
 int USB_DEV_STATUS_SELF_POWERED ;
 int udc_device_status ;
 int udc_iface_disable (scalar_t__) ;
 scalar_t__ udc_num_configuration ;
 TYPE_2__* udc_ptr_conf ;

void udc_reset(void) {
    uint8_t iface_num;

    if (udc_num_configuration) {
        for (iface_num = 0; iface_num < udc_ptr_conf->desc->bNumInterfaces; iface_num++) {
            udc_iface_disable(iface_num);
        }
    }
    udc_num_configuration = 0;

    if (CPU_TO_LE16(USB_DEV_STATUS_REMOTEWAKEUP) & udc_device_status) {

        UDC_REMOTEWAKEUP_DISABLE();
    }

    udc_device_status =



        CPU_TO_LE16(USB_DEV_STATUS_BUS_POWERED);

}
