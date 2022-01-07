
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBM4704_DATA_BIT ;
 int IBM4704_DATA_DDR ;
 int IBM4704_DATA_PIN ;
 int IBM4704_DATA_PORT ;
 int _delay_us (int) ;

__attribute__((used)) static inline bool data_in(void) {
    IBM4704_DATA_DDR &= ~(1 << IBM4704_DATA_BIT);
    IBM4704_DATA_PORT |= (1 << IBM4704_DATA_BIT);
    _delay_us(1);
    return IBM4704_DATA_PIN & (1 << IBM4704_DATA_BIT);
}
