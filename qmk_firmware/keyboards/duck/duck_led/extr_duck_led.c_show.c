
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RES ;
 int wait_us (unsigned long) ;

void show(void) {
  wait_us((RES / 1000UL) + 1);
}
