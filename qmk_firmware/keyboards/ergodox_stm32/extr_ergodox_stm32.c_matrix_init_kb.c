
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOA ;
 int PAL_MODE_OUTPUT_PUSHPULL ;
 int ergodox_blink_all_leds () ;
 int matrix_init_user () ;
 int palSetPadMode (int ,int,int ) ;

void matrix_init_kb(void)
{

    palSetPadMode(GPIOA, 10, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOA, 9, PAL_MODE_OUTPUT_PUSHPULL);
    palSetPadMode(GPIOA, 8, PAL_MODE_OUTPUT_PUSHPULL);

    ergodox_blink_all_leds();

    matrix_init_user();
}
