
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ delay_half; int polarity; scalar_t__ phase; int sck; int miso; int mosi; } ;
typedef TYPE_1__ mp_soft_spi_obj_t ;


 scalar_t__ MICROPY_HW_SOFTSPI_MIN_DELAY ;
 int mp_hal_delay_us_fast (scalar_t__) ;
 int mp_hal_pin_read (int ) ;
 int mp_hal_pin_write (int ,int) ;

void mp_soft_spi_transfer(void *self_in, size_t len, const uint8_t *src, uint8_t *dest) {
    mp_soft_spi_obj_t *self = (mp_soft_spi_obj_t*)self_in;
    uint32_t delay_half = self->delay_half;
    for (size_t i = 0; i < len; ++i) {
        uint8_t data_out = src[i];
        uint8_t data_in = 0;
        for (int j = 0; j < 8; ++j, data_out <<= 1) {
            mp_hal_pin_write(self->mosi, (data_out >> 7) & 1);
            if (self->phase == 0) {
                mp_hal_delay_us_fast(delay_half);
                mp_hal_pin_write(self->sck, 1 - self->polarity);
            } else {
                mp_hal_pin_write(self->sck, 1 - self->polarity);
                mp_hal_delay_us_fast(delay_half);
            }
            data_in = (data_in << 1) | mp_hal_pin_read(self->miso);
            if (self->phase == 0) {
                mp_hal_delay_us_fast(delay_half);
                mp_hal_pin_write(self->sck, self->polarity);
            } else {
                mp_hal_pin_write(self->sck, self->polarity);
                mp_hal_delay_us_fast(delay_half);
            }
        }
        if (dest != ((void*)0)) {
            dest[i] = data_in;
        }
    }
}
