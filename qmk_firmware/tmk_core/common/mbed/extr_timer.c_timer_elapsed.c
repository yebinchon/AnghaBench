
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int TIMER_DIFF_16 (int ,int ) ;
 int timer_read () ;

uint16_t timer_elapsed(uint16_t last) { return TIMER_DIFF_16(timer_read(), last); }
