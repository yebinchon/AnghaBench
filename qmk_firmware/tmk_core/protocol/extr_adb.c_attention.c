
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_us (int) ;
 int data_lo () ;
 int place_bit1 () ;

__attribute__((used)) static inline void attention(void) {
    data_lo();
    _delay_us(800 - 35);
    place_bit1();
}
