
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_set (int) ;

void LED_blink(unsigned int led)
{
 volatile int i,j;
 for(i = 0; i < 5; i++) {
  LED_set((1 << led)&0x7);
  for(j= 0; j < 200000; j++);
  LED_set(0);
  for(j= 0; j < 200000; j++);
 }
}
