
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int OSPEEDR; } ;
typedef TYPE_1__ GPIO_TypeDef ;



void mp_hal_pin_config_speed(uint32_t port_pin, uint32_t speed) {
    GPIO_TypeDef *gpio = (GPIO_TypeDef*)(port_pin & ~0xf);
    uint32_t pin = port_pin & 0xf;
    gpio->OSPEEDR = (gpio->OSPEEDR & ~(3 << (2 * pin))) | (speed << (2 * pin));
}
