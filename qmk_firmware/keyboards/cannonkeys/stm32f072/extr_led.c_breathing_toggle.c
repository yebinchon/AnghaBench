
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int breathing_disable () ;
 int breathing_enable () ;
 scalar_t__ is_breathing () ;
 int printf (char*) ;

void breathing_toggle(void) {
  if (is_breathing()){
    printf("disable breathing\n");
    breathing_disable();
  } else {
    printf("enable breathing\n");
    breathing_enable();
  }
}
