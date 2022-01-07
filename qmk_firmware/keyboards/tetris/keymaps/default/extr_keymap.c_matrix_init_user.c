
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* RGB_encoder_timer ;
 void* RGB_encoder_timer2 ;
 void* timer_read () ;

void matrix_init_user(void) {
  RGB_encoder_timer = timer_read();
  RGB_encoder_timer2 = timer_read();
}
