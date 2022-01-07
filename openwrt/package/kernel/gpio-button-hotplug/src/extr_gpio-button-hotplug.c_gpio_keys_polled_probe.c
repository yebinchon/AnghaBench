
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpio_keys_platform_data {int (* enable ) (int ) ;} ;
struct gpio_keys_button_dev {int dev; struct gpio_keys_platform_data* pdata; int work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int gpio_keys_button_probe (struct platform_device*,struct gpio_keys_button_dev**,int) ;
 int gpio_keys_polled_poll ;
 int gpio_keys_polled_queue_work (struct gpio_keys_button_dev*) ;
 int stub1 (int ) ;

__attribute__((used)) static int gpio_keys_polled_probe(struct platform_device *pdev)
{
 struct gpio_keys_platform_data *pdata;
 struct gpio_keys_button_dev *bdev;
 int ret;

 ret = gpio_keys_button_probe(pdev, &bdev, 1);

 if (ret)
  return ret;

 INIT_DELAYED_WORK(&bdev->work, gpio_keys_polled_poll);

 pdata = bdev->pdata;

 if (pdata->enable)
  pdata->enable(bdev->dev);

 gpio_keys_polled_queue_work(bdev);

 return ret;
}
