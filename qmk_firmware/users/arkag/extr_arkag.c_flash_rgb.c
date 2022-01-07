
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int LED_FLASH_DELAY ;
 int flash_color ;


 int flash_state ;
 int hsv_none ;

 int num_extra_flashes_off ;
 int set_color (int ,int) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int underglow ;

void flash_rgb (void) {
  static uint16_t flash_timer;
  switch(flash_state) {
  case 128:
    return;

  case 130:
    if (!flash_timer) {flash_timer = timer_read();}
    if (timer_elapsed(flash_timer) >= LED_FLASH_DELAY) {
      set_color(hsv_none, 0);
      flash_timer = timer_read();
      flash_state = 129;
    }
    return;

  case 129:
    if (timer_elapsed(flash_timer) >= LED_FLASH_DELAY) {
      set_color(flash_color, 0);
      flash_timer = timer_read();
      if (num_extra_flashes_off > 0) {
        flash_state = 130;
        num_extra_flashes_off--;
      } else {
        set_color(underglow, 0);
        flash_state = 128;
      }
    }
    return;
  }
}
