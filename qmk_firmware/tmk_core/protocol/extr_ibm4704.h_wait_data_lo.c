
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int _delay_us (int) ;
 scalar_t__ data_in () ;

__attribute__((used)) static inline uint16_t wait_data_lo(uint16_t us) {
    while (data_in() && us) {
        asm("");
        _delay_us(1);
        us--;
    }
    return us;
}
