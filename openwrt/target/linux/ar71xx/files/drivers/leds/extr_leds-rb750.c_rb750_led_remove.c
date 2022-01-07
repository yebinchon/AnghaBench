
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb750_led_drvdata {int num_leds; TYPE_1__* led_devs; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int cdev; } ;


 int kfree (struct rb750_led_drvdata*) ;
 int led_classdev_unregister (int *) ;
 struct rb750_led_drvdata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rb750_led_remove(struct platform_device *pdev)
{
 struct rb750_led_drvdata *drvdata;
 int i;

 drvdata = platform_get_drvdata(pdev);
 for (i = 0; i < drvdata->num_leds; i++)
  led_classdev_unregister(&drvdata->led_devs[i].cdev);

 kfree(drvdata);
 return 0;
}
