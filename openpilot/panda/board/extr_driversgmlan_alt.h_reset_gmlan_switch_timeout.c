
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GMLAN_TICKS_PER_SECOND ;
 int GPIO_SWITCH ;
 int can_timeout_counter ;
 int gmlan_alt_mode ;
 int gmlan_switch_below_timeout ;

void reset_gmlan_switch_timeout(void) {
  can_timeout_counter = GMLAN_TICKS_PER_SECOND;
  gmlan_switch_below_timeout = 1;
  gmlan_alt_mode = GPIO_SWITCH;
}
