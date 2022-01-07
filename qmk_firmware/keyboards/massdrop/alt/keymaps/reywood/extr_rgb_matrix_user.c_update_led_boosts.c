
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ISSI3733_LED_COUNT ;
 scalar_t__ LED_BOOST_REFRESH_INTERVAL_IN_MS ;
 int calculate_new_led_boosts (int *) ;
 int last_boost_update ;
 int set_new_led_boosts (int *) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

__attribute__((used)) static void update_led_boosts(void) {
  if (timer_elapsed(last_boost_update) > LED_BOOST_REFRESH_INTERVAL_IN_MS) {
    last_boost_update = timer_read();

    uint8_t new_led_boosts[ISSI3733_LED_COUNT];
    calculate_new_led_boosts(new_led_boosts);
    set_new_led_boosts(new_led_boosts);
  }
}
