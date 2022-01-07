
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int v; int s; int h; } ;



 size_t cidx ;
 size_t cnum ;
 TYPE_4__** colors ;
 int rgblight_sethsv (int ,int ,int ) ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case 128:
        if (record->event.pressed) {
            cidx = (cidx + 1) % cnum;
            rgblight_sethsv(colors[cidx]->h, colors[cidx]->s, colors[cidx]->v);
        }
        break;
    }

    return 1;
}
