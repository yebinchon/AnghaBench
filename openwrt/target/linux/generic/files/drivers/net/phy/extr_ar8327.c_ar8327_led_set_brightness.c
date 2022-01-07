
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct led_classdev {int dummy; } ;
struct ar8327_led {int active_low; int enable_hw_mode; int lock; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int AR8327_LED_PATTERN_OFF ;
 int AR8327_LED_PATTERN_ON ;
 int LED_OFF ;
 int ar8327_led_schedule_change (struct ar8327_led*,int ) ;
 struct ar8327_led* led_cdev_to_ar8327_led (struct led_classdev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
ar8327_led_set_brightness(struct led_classdev *led_cdev,
     enum led_brightness brightness)
{
 struct ar8327_led *aled = led_cdev_to_ar8327_led(led_cdev);
 u8 pattern;
 bool active;

 active = (brightness != LED_OFF);
 active ^= aled->active_low;

 pattern = (active) ? AR8327_LED_PATTERN_ON :
        AR8327_LED_PATTERN_OFF;

 spin_lock(&aled->lock);

 aled->enable_hw_mode = 0;
 ar8327_led_schedule_change(aled, pattern);

 spin_unlock(&aled->lock);
}
