
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYOFF ;
 int DISPLAYON ;



 int clear_buffer () ;
 scalar_t__ clock_set_mode ;
 int draw_clock () ;
 int draw_default () ;
 int last_flush ;
 int oled_mode ;
 int send_command (int ) ;
 int timer_read () ;

__attribute__ ((weak))
void draw_ui() {
}
