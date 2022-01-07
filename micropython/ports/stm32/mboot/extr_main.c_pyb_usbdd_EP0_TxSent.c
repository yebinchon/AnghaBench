
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int tx_pending; } ;
typedef TYPE_1__ pyb_usbdd_obj_t ;
struct TYPE_5__ {scalar_t__ pClassData; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;


 int USBD_OK ;
 int dfu_process () ;

__attribute__((used)) static uint8_t pyb_usbdd_EP0_TxSent(USBD_HandleTypeDef *pdev) {
    pyb_usbdd_obj_t *self = (pyb_usbdd_obj_t*)pdev->pClassData;
    self->tx_pending = 0;


    dfu_process();

    return USBD_OK;
}
