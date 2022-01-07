
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TIMER_DIFF_32 (int ,int ) ;
 int timer_read32 () ;

uint32_t timer_elapsed32(uint32_t tlast) { return TIMER_DIFF_32(timer_read32(), tlast); }
