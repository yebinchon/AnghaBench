
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; TYPE_1__* pClassData; int * pClass; int * pDesc; int dev_state; } ;
struct TYPE_4__ {int started; int tx_pending; TYPE_2__ hUSBDDevice; } ;
typedef TYPE_1__ pyb_usbdd_obj_t ;
typedef TYPE_2__ USBD_HandleTypeDef ;
typedef int USBD_DescriptorsTypeDef ;


 int USBD_STATE_DEFAULT ;
 int pyb_usbdd_class ;
 int pyb_usbdd_descriptors ;

__attribute__((used)) static void pyb_usbdd_init(pyb_usbdd_obj_t *self, int phy_id) {
    self->started = 0;
    self->tx_pending = 0;
    USBD_HandleTypeDef *usbd = &self->hUSBDDevice;
    usbd->id = phy_id;
    usbd->dev_state = USBD_STATE_DEFAULT;
    usbd->pDesc = (USBD_DescriptorsTypeDef*)&pyb_usbdd_descriptors;
    usbd->pClass = &pyb_usbdd_class;
    usbd->pClassData = self;
}
