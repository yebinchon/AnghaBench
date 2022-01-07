
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fauxclicky_stop () ;
 scalar_t__ note_period ;
 int note_playing ;
 int note_start ;
 scalar_t__ timer_elapsed (int ) ;

void fauxclicky_check() {
    if (!note_playing) return;

    if (timer_elapsed(note_start) > note_period) {
        fauxclicky_stop();
    }
}
