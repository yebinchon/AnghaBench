
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long timer_read32 () ;

unsigned long micros(void)
{
    return timer_read32() * 1000UL;
}
