
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ar8327_led {int enable_hw_mode; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 struct ar8327_led* led_cdev_to_ar8327_led (struct led_classdev*) ;
 scalar_t__ scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
ar8327_led_enable_hw_mode_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct ar8327_led *aled = led_cdev_to_ar8327_led(led_cdev);
 ssize_t ret = 0;

 ret += scnprintf(buf, PAGE_SIZE, "%d\n", aled->enable_hw_mode);

 return ret;
}
