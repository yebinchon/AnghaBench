
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ timer_read32 () ;

uint32_t timer_elapsed32(uint32_t last) { return timer_read32() - last; }
