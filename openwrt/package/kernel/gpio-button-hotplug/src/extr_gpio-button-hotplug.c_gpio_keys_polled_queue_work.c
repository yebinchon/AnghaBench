
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_keys_platform_data {int poll_interval; } ;
struct gpio_keys_button_dev {int work; struct gpio_keys_platform_data* pdata; } ;


 unsigned long HZ ;
 unsigned long msecs_to_jiffies (int ) ;
 unsigned long round_jiffies_relative (unsigned long) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void gpio_keys_polled_queue_work(struct gpio_keys_button_dev *bdev)
{
 struct gpio_keys_platform_data *pdata = bdev->pdata;
 unsigned long delay = msecs_to_jiffies(pdata->poll_interval);

 if (delay >= HZ)
  delay = round_jiffies_relative(delay);
 schedule_delayed_work(&bdev->work, delay);
}
