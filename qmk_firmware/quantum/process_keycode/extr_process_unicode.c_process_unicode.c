
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int QK_UNICODE ;
 int QK_UNICODE_MAX ;
 int register_hex (int) ;
 int unicode_input_finish () ;
 int unicode_input_start () ;

bool process_unicode(uint16_t keycode, keyrecord_t *record) {
    if (keycode >= QK_UNICODE && keycode <= QK_UNICODE_MAX && record->event.pressed) {
        unicode_input_start();
        register_hex(keycode & 0x7FFF);
        unicode_input_finish();
    }
    return 1;
}
