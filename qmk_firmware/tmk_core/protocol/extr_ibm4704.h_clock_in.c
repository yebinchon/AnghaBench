
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBM4704_CLOCK_BIT ;
 int IBM4704_CLOCK_DDR ;
 int IBM4704_CLOCK_PIN ;
 int IBM4704_CLOCK_PORT ;
 int _delay_us (int) ;

__attribute__((used)) static inline bool clock_in(void) {
    IBM4704_CLOCK_DDR &= ~(1 << IBM4704_CLOCK_BIT);
    IBM4704_CLOCK_PORT |= (1 << IBM4704_CLOCK_BIT);
    _delay_us(1);
    return IBM4704_CLOCK_PIN & (1 << IBM4704_CLOCK_BIT);
}
