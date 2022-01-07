
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int rb4xx_cpld_gpio_direction_input(struct gpio_chip *chip,
        unsigned offset)
{
 return -EOPNOTSUPP;
}
