
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_us (int) ;
 int data_hi () ;
 int data_lo () ;

__attribute__((used)) static inline void place_bit0(void) {
    data_lo();
    _delay_us(65);
    data_hi();
    _delay_us(35);
}
