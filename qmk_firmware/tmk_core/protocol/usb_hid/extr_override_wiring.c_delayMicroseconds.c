
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_us (unsigned int) ;

void delayMicroseconds(unsigned int us)
{
    _delay_us(us);
}
