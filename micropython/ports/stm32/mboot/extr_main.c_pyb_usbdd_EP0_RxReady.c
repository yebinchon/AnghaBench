
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int rx_buf; int wLength; int wValue; int bRequest; } ;
typedef TYPE_1__ pyb_usbdd_obj_t ;
struct TYPE_5__ {scalar_t__ pClassData; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;


 int USBD_OK ;
 int dfu_handle_rx (int ,int ,int ,int ) ;

__attribute__((used)) static uint8_t pyb_usbdd_EP0_RxReady(USBD_HandleTypeDef *pdev) {
    pyb_usbdd_obj_t *self = (pyb_usbdd_obj_t*)pdev->pClassData;
    dfu_handle_rx(self->bRequest, self->wValue, self->wLength, self->rx_buf);
    return USBD_OK;
}
