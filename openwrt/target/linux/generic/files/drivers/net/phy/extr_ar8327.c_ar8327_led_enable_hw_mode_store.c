
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ar8327_led {int enable_hw_mode; int lock; } ;
typedef size_t ssize_t ;


 int AR8327_LED_PATTERN_OFF ;
 int AR8327_LED_PATTERN_RULE ;
 size_t EINVAL ;
 int ar8327_led_schedule_change (struct ar8327_led*,int ) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int kstrtou8 (char const*,int,int *) ;
 struct ar8327_led* led_cdev_to_ar8327_led (struct led_classdev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
ar8327_led_enable_hw_mode_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf,
    size_t size)
{
        struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct ar8327_led *aled = led_cdev_to_ar8327_led(led_cdev);
 u8 pattern;
 u8 value;
 int ret;

 ret = kstrtou8(buf, 10, &value);
 if (ret < 0)
  return -EINVAL;

 spin_lock(&aled->lock);

 aled->enable_hw_mode = !!value;
 if (aled->enable_hw_mode)
  pattern = AR8327_LED_PATTERN_RULE;
 else
  pattern = AR8327_LED_PATTERN_OFF;

 ar8327_led_schedule_change(aled, pattern);

 spin_unlock(&aled->lock);

 return size;
}
