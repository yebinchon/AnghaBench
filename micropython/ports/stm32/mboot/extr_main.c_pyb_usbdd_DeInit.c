
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int pyb_usbdd_obj_t ;
struct TYPE_3__ {scalar_t__ pClassData; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;


 int USBD_OK ;

__attribute__((used)) static uint8_t pyb_usbdd_DeInit(USBD_HandleTypeDef *pdev, uint8_t cfgidx) {
    pyb_usbdd_obj_t *self = (pyb_usbdd_obj_t*)pdev->pClassData;
    (void)self;
    return USBD_OK;
}
