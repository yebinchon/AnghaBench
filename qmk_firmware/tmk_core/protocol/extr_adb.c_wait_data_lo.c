
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int F_CPU ;
 int _delay_us (int) ;
 int data_in () ;

__attribute__((used)) static inline uint16_t wait_data_lo(uint16_t us) {
    do {
        if (!data_in()) break;
        _delay_us(1 - (6 * 1000000.0 / F_CPU));
    } while (--us);
    return us;
}
