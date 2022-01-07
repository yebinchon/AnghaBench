
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int PORTC ;
 int matrix_init_user () ;
 int rgblight_init () ;
 int rgblight_mode (int) ;
 int rgblight_setrgb (int ,int,int ) ;

void matrix_init_kb(void) {
        DDRC |= (1<<7);
        PORTC |= (1<<7);

        matrix_init_user();
}
