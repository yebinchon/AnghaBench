
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_keys_platform_data {size_t nbuttons; } ;
struct gpio_keys_button_dev {struct gpio_keys_button_data* data; struct gpio_keys_platform_data* pdata; } ;
struct gpio_keys_button_data {int work; int irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int disable_irq (int ) ;

__attribute__((used)) static void gpio_keys_irq_close(struct gpio_keys_button_dev *bdev)
{
 struct gpio_keys_platform_data *pdata = bdev->pdata;
 size_t i;

 for (i = 0; i < pdata->nbuttons; i++) {
  struct gpio_keys_button_data *bdata = &bdev->data[i];

  disable_irq(bdata->irq);
  cancel_delayed_work_sync(&bdata->work);
 }
}
