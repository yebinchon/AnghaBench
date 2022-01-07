
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int my_timer ;
 int timer_read () ;

__attribute__ ((weak))
void matrix_init_user(void) {
  my_timer = timer_read();
}
