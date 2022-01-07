
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_hal_pin_obj_t ;


 int GPIO_MODE_INPUT_OUTPUT_OD ;
 int gpio_pad_select_gpio (int ) ;
 int gpio_set_direction (int ,int ) ;

__attribute__((used)) static inline void mp_hal_pin_open_drain(mp_hal_pin_obj_t pin) {
    gpio_pad_select_gpio(pin);
    gpio_set_direction(pin, GPIO_MODE_INPUT_OUTPUT_OD);
}
