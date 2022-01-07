
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cli () ;
 int out_hi () ;
 int out_hi_delay (int) ;
 int out_lo_delay (int) ;
 int sei () ;

void next_kbd_set_leds(bool left, bool right) {
    cli();
    out_lo_delay(9);

    out_hi_delay(3);
    out_lo_delay(1);

    if (left) {
        out_hi_delay(1);
    } else {
        out_lo_delay(1);
    }

    if (right) {
        out_hi_delay(1);
    } else {
        out_lo_delay(1);
    }

    out_lo_delay(7);
    out_hi();
    sei();
}
