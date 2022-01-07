
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ timer_read () ;

uint16_t timer_elapsed(uint16_t last) { return timer_read() - last; }
