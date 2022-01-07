
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* default_trigger; int brightness_set; int name; } ;
struct led_nu801_led_data {int level; TYPE_1__ cdev; struct led_nu801_data* controller; int name; } ;
struct led_nu801_data {int num_leds; int name; int device_name; struct led_nu801_led_data* led_chain; } ;
struct device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int NUM_COLORS ;
 int kfree (struct led_nu801_led_data*) ;
 int led_classdev_register (struct device*,TYPE_1__*) ;
 int led_nu801_set ;
 int scnprintf (int ,int,char*,int ,char const*,int ,int) ;

__attribute__((used)) static int led_nu801_create(struct led_nu801_data *controller,
        struct device *parent,
        int index,
        enum led_brightness brightness,



        const char *color)
{
 struct led_nu801_led_data *led = &controller->led_chain[index];
 int ret;

 scnprintf(led->name, sizeof(led->name), "%s:%s:%s%d",
    controller->device_name, color, controller->name,
    (controller->num_leds - (index + 1)) / NUM_COLORS);
 led->cdev.name = led->name;
 led->cdev.brightness_set = led_nu801_set;



 led->level = brightness;
 led->controller = controller;
 ret = led_classdev_register(parent, &led->cdev);
 if (ret < 0)
  goto err;

 return 0;

err:
 kfree(led);
 return ret;
}
