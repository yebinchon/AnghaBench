
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;


 scalar_t__ td_led_override ;

void belak_td_reset(qk_tap_dance_state_t *state, void *user_data) {
    td_led_override = 0;
}
