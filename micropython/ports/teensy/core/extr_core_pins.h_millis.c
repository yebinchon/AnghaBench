
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint32_t ;


 int volatile systick_millis_count ;

__attribute__((used)) static inline uint32_t millis(void)
{
 volatile uint32_t ret = systick_millis_count;
 return ret;
}
