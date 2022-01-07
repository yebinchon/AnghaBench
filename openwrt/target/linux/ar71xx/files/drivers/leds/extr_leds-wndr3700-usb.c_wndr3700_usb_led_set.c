
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int AR71XX_RESET_GE1_PHY ;
 int ath79_device_reset_clear (int ) ;
 int ath79_device_reset_set (int ) ;

__attribute__((used)) static void wndr3700_usb_led_set(struct led_classdev *cdev,
     enum led_brightness brightness)
{
 if (brightness)
  ath79_device_reset_clear(AR71XX_RESET_GE1_PHY);
 else
  ath79_device_reset_set(AR71XX_RESET_GE1_PHY);
}
