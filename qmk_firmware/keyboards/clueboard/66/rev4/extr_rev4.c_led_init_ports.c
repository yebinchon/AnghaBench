
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOA ;
 int GPIOB ;
 int PAL_MODE_OUTPUT_PUSHPULL ;
 int palClearPad (int ,int) ;
 int palSetPadMode (int ,int,int ) ;

void led_init_ports() {

    palSetPadMode(GPIOB, 13, PAL_MODE_OUTPUT_PUSHPULL);
    palClearPad(GPIOB, 13);
    palSetPadMode(GPIOB, 14, PAL_MODE_OUTPUT_PUSHPULL);
    palClearPad(GPIOB, 14);
    palSetPadMode(GPIOA, 8, PAL_MODE_OUTPUT_PUSHPULL);
    palClearPad(GPIOA, 8);
    palSetPadMode(GPIOA, 0, PAL_MODE_OUTPUT_PUSHPULL);
    palClearPad(GPIOA, 0);
}
