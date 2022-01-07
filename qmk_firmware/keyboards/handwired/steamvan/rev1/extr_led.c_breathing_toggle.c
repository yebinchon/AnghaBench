
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int breathing_disable () ;
 int breathing_enable () ;
 scalar_t__ is_breathing () ;

void breathing_toggle(void) {
  if (is_breathing()){
    breathing_disable();
  } else {
    breathing_enable();
  }
}
