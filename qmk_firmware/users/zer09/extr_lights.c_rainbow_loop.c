
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {size_t pos; int status; int forced; } ;


 int DEFAULT ;


 size_t RBW ;
 int SET_LED_RGB (size_t,size_t,size_t,int ,size_t) ;
 size_t** _LC ;
 size_t* _LIGHTS ;
 int * active_key_pos ;
 int led_dim ;
 TYPE_1__* rbw_led_keys ;
 int timer_elapsed (int) ;
 int timer_read () ;

bool rainbow_loop(uint8_t lyr) {
  static uint16_t last_timer = 0;
  static uint16_t i = 0;
  static uint8_t r, g, b, pos;

  if (timer_elapsed(last_timer) < 8) {
    return 0;
  }

  if (i >= 360) {
    i = 0;
  }

  last_timer = timer_read();
  r = _LIGHTS[(i + 120) % 360];
  g = _LIGHTS[i];
  b = _LIGHTS[(i + 240) % 360];

  i++;

  bool set_rbw = 0;

  for (uint8_t j = 0; j < RBW; j++) {
    pos = rbw_led_keys[j].pos;

    switch (rbw_led_keys[j].status) {
    case 128:
      if (!active_key_pos[pos] || rbw_led_keys[j].forced) {
        SET_LED_RGB(r, g, b, led_dim, pos);
        set_rbw = 1;
      }

      break;
    case 129:
      if (!active_key_pos[pos] || rbw_led_keys[j].forced) {
        SET_LED_RGB(_LC[lyr][0], _LC[lyr][1], _LC[lyr][2], led_dim, pos);
        set_rbw = 1;
      }

      rbw_led_keys[j].status = DEFAULT;
      break;
    default:
      break;
    }
  }

  return set_rbw;
}
