
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _leds_dirty ;
 int modal_leds () ;

void matrix_scan_user(void) {
    if (_leds_dirty) { modal_leds(); };
}
