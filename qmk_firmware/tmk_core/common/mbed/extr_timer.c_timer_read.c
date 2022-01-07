
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int timer_count ;

uint16_t timer_read(void) { return (uint16_t)(timer_count & 0xFFFF); }
