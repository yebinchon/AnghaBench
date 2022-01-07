
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_NUM_LOCK ;
 int NAS ;
 scalar_t__ layer_state_is (int ) ;
 int lock_led_set (int,int ) ;
 int numlock_enabled ;
 int set_nas (int) ;

__attribute__((used)) static void toggle_numlock(void) {
  numlock_enabled = !numlock_enabled;
  lock_led_set(numlock_enabled, LED_NUM_LOCK);

  if (layer_state_is(NAS)) {

    set_nas(1);
  }
}
