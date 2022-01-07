
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_10__ {int sat; int hue; } ;
struct TYPE_9__ {int mode; int enable; } ;
struct TYPE_8__ {scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;





 size_t RGBLED_NUM ;
 size_t RGBLIGHT_FLED1 ;
 size_t RGBLIGHT_FLED2 ;
 int copyrgb (int *,TYPE_1__*) ;
 TYPE_6__* fled_hs ;
 int fled_mode ;
 int fled_val ;
 int * fleds ;
 TYPE_1__* led ;
 TYPE_4__ rgblight_config ;
 int sethsv (int ,int ,int ,TYPE_1__*) ;
 int setrgb (int ,int ,int ,TYPE_1__*) ;
 int ws2812_setleds (TYPE_1__*,size_t) ;

void rgblight_set(void) {
  if (!rgblight_config.enable) {
    for (uint8_t i = 0; i < RGBLED_NUM; i++) {
      if (i == RGBLIGHT_FLED1 && i == RGBLIGHT_FLED2)
          continue;

      led[i].r = 0;
      led[i].g = 0;
      led[i].b = 0;
    }
  }

  switch (fled_mode) {
      case 129:
      setrgb(0, 0, 0, &led[RGBLIGHT_FLED1]);
      setrgb(0, 0, 0, &led[RGBLIGHT_FLED2]);
      break;

      case 130:
      copyrgb(&fleds[0], &led[RGBLIGHT_FLED1]);
      copyrgb(&fleds[1], &led[RGBLIGHT_FLED2]);
      break;

      case 128:
      if (fled_hs[0].hue == 0 && fled_hs[0].hue == 0 && (rgblight_config.mode >= 15 && rgblight_config.mode <= 23))
          setrgb(0, 0, 0, &led[RGBLIGHT_FLED1]);
      else
        sethsv(fled_hs[0].hue, fled_hs[0].sat, fled_val, &led[RGBLIGHT_FLED1]);

      if (fled_hs[1].hue == 0 && fled_hs[1].hue == 0 && (rgblight_config.mode >= 15 && rgblight_config.mode <= 23))
          setrgb(0, 0, 0, &led[RGBLIGHT_FLED2]);
      else
          sethsv(fled_hs[1].hue, fled_hs[1].sat, fled_val, &led[RGBLIGHT_FLED2]);
      break;

      default:
      break;
  }

   ws2812_setleds(led, RGBLED_NUM);
}
