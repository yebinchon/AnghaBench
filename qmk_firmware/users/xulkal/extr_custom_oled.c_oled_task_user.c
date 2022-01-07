
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_keyboard_master () ;
 int oled_scroll_left () ;
 int render_logo () ;
 int render_status () ;

void oled_task_user(void)
{
    if (is_keyboard_master())
        render_status();
    else
    {
        render_logo();
        oled_scroll_left();
    }
}
