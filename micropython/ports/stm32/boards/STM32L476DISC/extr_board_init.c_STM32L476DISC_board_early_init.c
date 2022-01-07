
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_hal_pin_output (int ) ;
 int mp_hal_pin_write (int ,int) ;
 int pin_E14 ;
 int pin_E15 ;

void STM32L476DISC_board_early_init(void) {

    mp_hal_pin_output(pin_E14);
    mp_hal_pin_output(pin_E15);
    mp_hal_pin_write(pin_E14, 1);
    mp_hal_pin_write(pin_E15, 1);
}
