
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_keys_button_data {int software_debounce; int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t button_handle_irq(int irq, void *_bdata)
{
 struct gpio_keys_button_data *bdata =
  (struct gpio_keys_button_data *) _bdata;

 mod_delayed_work(system_wq, &bdata->work,
    msecs_to_jiffies(bdata->software_debounce));

 return IRQ_HANDLED;
}
