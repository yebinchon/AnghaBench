
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int h; } ;



 scalar_t__ boot ;
 scalar_t__ fade_interval ;
 int fade_state ;
 scalar_t__ flash_state ;
 scalar_t__ no_flash ;
 int set_color (TYPE_1__,int) ;
 scalar_t__ state ;

 scalar_t__ timer_elapsed (scalar_t__) ;
 scalar_t__ timer_read () ;
 TYPE_1__ underglow ;

void fade_rgb (void) {
  static uint16_t fade_timer;
  if (state == boot) {return;}
  if (!fade_timer) {fade_timer = timer_read();}
  if (timer_elapsed(fade_timer) < fade_interval) {return;}
  switch (fade_state) {
  case 129:
    if (underglow.h == 359) {
      fade_state = 128;
      return;
    }
    underglow.h = underglow.h + 1;
    break;

  case 128:
    if (underglow.h == 0) {
      fade_state = 129;
      return;
    }
    underglow.h = underglow.h - 1;
    break;
  }
  fade_timer = timer_read();
  if (flash_state == no_flash) {
    set_color(underglow, 0);
  }
}
