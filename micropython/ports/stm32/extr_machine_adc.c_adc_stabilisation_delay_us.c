
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int mp_hal_delay_us (scalar_t__) ;

__attribute__((used)) static inline void adc_stabilisation_delay_us(uint32_t us) {
    mp_hal_delay_us(us + 1);
}
