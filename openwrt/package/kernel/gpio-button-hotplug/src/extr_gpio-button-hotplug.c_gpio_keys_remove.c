
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpio_keys_button_dev {scalar_t__ polled; } ;


 int gpio_keys_irq_close (struct gpio_keys_button_dev*) ;
 int gpio_keys_polled_close (struct gpio_keys_button_dev*) ;
 struct gpio_keys_button_dev* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int gpio_keys_remove(struct platform_device *pdev)
{
 struct gpio_keys_button_dev *bdev = platform_get_drvdata(pdev);

 platform_set_drvdata(pdev, ((void*)0));

 if (bdev->polled)
  gpio_keys_polled_close(bdev);
 else
  gpio_keys_irq_close(bdev);

 return 0;
}
