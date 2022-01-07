
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_keys_button_data {TYPE_1__* b; scalar_t__ can_sleep; } ;
struct TYPE_2__ {int active_low; int gpio; } ;


 int gpio_get_value (int ) ;
 int gpio_get_value_cansleep (int ) ;

__attribute__((used)) static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
{
 int val;

 if (bdata->can_sleep)
  val = !!gpio_get_value_cansleep(bdata->b->gpio);
 else
  val = !!gpio_get_value(bdata->b->gpio);

 return val ^ bdata->b->active_low;
}
