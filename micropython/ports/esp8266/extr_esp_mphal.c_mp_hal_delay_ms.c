
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mp_hal_delay_us (int) ;

void mp_hal_delay_ms(uint32_t delay) {
    mp_hal_delay_us(delay * 1000);
}
