
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int miso; int mosi; int sck; int polarity; } ;
typedef TYPE_1__ mp_soft_spi_obj_t ;




 int mp_hal_pin_input (int ) ;
 int mp_hal_pin_output (int ) ;
 int mp_hal_pin_write (int ,int ) ;

int mp_soft_spi_ioctl(void *self_in, uint32_t cmd) {
    mp_soft_spi_obj_t *self = (mp_soft_spi_obj_t*)self_in;

    switch (cmd) {
        case 128:
            mp_hal_pin_write(self->sck, self->polarity);
            mp_hal_pin_output(self->sck);
            mp_hal_pin_output(self->mosi);
            mp_hal_pin_input(self->miso);
            break;

        case 129:
            break;
    }

    return 0;
}
