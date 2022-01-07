
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_hal_pin_read (int ) ;
 int pyb_pin_WL_HOST_WAKE ;
 int pyb_pin_WL_SDIO_1 ;

int cyw43_cb_read_host_interrupt_pin(void *cb_data) {



    return mp_hal_pin_read(pyb_pin_WL_SDIO_1);

}
