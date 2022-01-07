
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_cpld {unsigned int config; int lock; } ;
struct gpio_chip {int dummy; } ;


 struct rb4xx_cpld* gpio_to_cpld (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rb4xx_cpld_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct rb4xx_cpld *cpld = gpio_to_cpld(chip);
 int ret;

 mutex_lock(&cpld->lock);
 ret = (cpld->config >> offset) & 1;
 mutex_unlock(&cpld->lock);

 return ret;
}
