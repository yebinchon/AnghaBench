
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_ms (unsigned long) ;

void delay(unsigned long ms)
{
    _delay_ms(ms);
}
