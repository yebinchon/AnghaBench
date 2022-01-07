
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int started; int hUSBDDevice; } ;
typedef TYPE_1__ pyb_usbdd_obj_t ;
struct TYPE_5__ {int CR3; } ;


 TYPE_3__* PWR ;
 int PWR_CR3_USB33DEN ;
 int PWR_CR3_USB33RDY ;
 int USBD_LL_Init (int *,int ,int ) ;
 int USBD_LL_Start (int *) ;
 int usbd_fifo_size ;

__attribute__((used)) static void pyb_usbdd_start(pyb_usbdd_obj_t *self) {
    if (!self->started) {





        USBD_LL_Init(&self->hUSBDDevice, 0, usbd_fifo_size);
        USBD_LL_Start(&self->hUSBDDevice);
        self->started = 1;
    }
}
