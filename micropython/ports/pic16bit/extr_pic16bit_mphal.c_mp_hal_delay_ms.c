
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;



void mp_hal_delay_ms(mp_uint_t ms) {

    for (int i = ms; i > 0; i--) {
        for (volatile int j = 0; j < 5000; j++) {
        }
    }
}
