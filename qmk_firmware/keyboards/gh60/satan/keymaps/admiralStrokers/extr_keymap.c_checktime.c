
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_timer ;
 int timer_elapsed (int ) ;

bool checktime(void){
  return (timer_elapsed(key_timer) < 150) ? 1 : 0;
 }
