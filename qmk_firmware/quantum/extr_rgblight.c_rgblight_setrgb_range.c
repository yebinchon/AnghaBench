
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ w; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
struct TYPE_3__ {int enable; } ;


 scalar_t__ RGBLED_NUM ;
 TYPE_2__* led ;
 TYPE_1__ rgblight_config ;
 int rgblight_set () ;
 int wait_ms (int) ;

void rgblight_setrgb_range(uint8_t r, uint8_t g, uint8_t b, uint8_t start, uint8_t end) {
    if (!rgblight_config.enable || start < 0 || start >= end || end > RGBLED_NUM) {
        return;
    }

    for (uint8_t i = start; i < end; i++) {
        led[i].r = r;
        led[i].g = g;
        led[i].b = b;



    }
    rgblight_set();
    wait_ms(1);
}
