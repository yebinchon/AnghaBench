
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OLED_SCROLL_TIMEOUT ;
 scalar_t__ oled_active ;
 scalar_t__ oled_dirty ;
 int oled_initialized ;
 int oled_off () ;
 int oled_render () ;
 int oled_scroll_left () ;
 int oled_scroll_off () ;
 int oled_scroll_right () ;
 scalar_t__ oled_scroll_timeout ;
 scalar_t__ oled_scrolling ;
 int oled_set_cursor (int ,int ) ;
 int oled_task_user () ;
 scalar_t__ oled_timeout ;
 scalar_t__ timer_expired32 (scalar_t__,scalar_t__) ;
 scalar_t__ timer_read32 () ;

void oled_task(void) {
    if (!oled_initialized) {
        return;
    }

    oled_set_cursor(0, 0);

    oled_task_user();
    oled_render();
}
