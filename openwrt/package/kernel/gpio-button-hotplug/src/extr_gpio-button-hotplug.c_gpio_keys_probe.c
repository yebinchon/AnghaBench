
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_keys_platform_data {int nbuttons; struct gpio_keys_button* buttons; } ;
struct gpio_keys_button_dev {struct gpio_keys_button_data* data; struct gpio_keys_platform_data* pdata; } ;
struct gpio_keys_button_data {scalar_t__ irq; int software_debounce; int work; int gpiod; } ;
struct gpio_keys_button {scalar_t__ irq; int gpio; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_RISING ;
 int button_handle_irq ;
 int dev_dbg (int *,char*,int ,scalar_t__) ;
 int dev_err (int *,char*,scalar_t__,...) ;
 int dev_name (int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,unsigned long,int ,struct gpio_keys_button_data*) ;
 int gpio_keys_button_probe (struct platform_device*,struct gpio_keys_button_dev**,int ) ;
 int gpio_keys_irq_work_func ;
 scalar_t__ gpio_to_irq (int ) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int gpio_keys_probe(struct platform_device *pdev)
{
 struct gpio_keys_platform_data *pdata;
 struct gpio_keys_button_dev *bdev;
 int ret, i;


 ret = gpio_keys_button_probe(pdev, &bdev, 0);

 if (ret)
  return ret;

 pdata = bdev->pdata;
 for (i = 0; i < pdata->nbuttons; i++) {
  const struct gpio_keys_button *button = &pdata->buttons[i];
  struct gpio_keys_button_data *bdata = &bdev->data[i];
  unsigned long irqflags = IRQF_ONESHOT;

  INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);

  if (!bdata->gpiod)
   continue;

  if (!button->irq) {
   bdata->irq = gpio_to_irq(button->gpio);

   if (bdata->irq < 0) {
    dev_err(&pdev->dev, "failed to get irq for gpio:%d\n",
     button->gpio);
    continue;
   }

   irqflags |= IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;
  } else {
   bdata->irq = button->irq;
  }

  schedule_delayed_work(&bdata->work,
          msecs_to_jiffies(bdata->software_debounce));

  ret = devm_request_threaded_irq(&pdev->dev,
   bdata->irq, ((void*)0), button_handle_irq,
   irqflags, dev_name(&pdev->dev), bdata);

  if (ret < 0) {
   bdata->irq = 0;
   dev_err(&pdev->dev, "failed to request irq:%d for gpio:%d\n",
    bdata->irq, button->gpio);
   continue;
  } else {
   dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
    button->gpio, bdata->irq);
  }
 }

 return 0;
}
