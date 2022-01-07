
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LED_LOCK_PORT ;

__attribute__((used)) static void lock_led_set(bool on, uint8_t led) {
  if (on) {
    LED_LOCK_PORT &= ~led;
  } else {
    LED_LOCK_PORT |= led;
  }
}
