
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_ID_PIN (int ) ;
 int GPIO_PIN_INTR_DISABLE ;
 int PLATFORM_GPIO_INPUT ;
 int PLATFORM_GPIO_PULLUP ;
 int gpio_pin_intr_state_set (int ,int ) ;
 int * pin_num ;
 int platform_gpio_mode (int,int ,int ) ;

__attribute__((used)) static void rotary_clear_pin(int pin)
{
  if (pin >= 0) {
    gpio_pin_intr_state_set(GPIO_ID_PIN(pin_num[pin]), GPIO_PIN_INTR_DISABLE);
    platform_gpio_mode(pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_PULLUP);
  }
}
