
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_us (int) ;

void delay_us(int count) {
    while (count--) {
        _delay_us(1);
    }
}
