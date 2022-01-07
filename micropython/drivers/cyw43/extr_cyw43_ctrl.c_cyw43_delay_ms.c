
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mp_hal_delay_ms (int ) ;

__attribute__((used)) static inline void cyw43_delay_ms(uint32_t ms) {
    mp_hal_delay_ms(ms);
}
