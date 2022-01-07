
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _irq_pin ;
 scalar_t__ platform_gpio_read (int ) ;

__attribute__((used)) static int isTouching() {
  return (platform_gpio_read(_irq_pin) == 0);
}
