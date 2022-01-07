
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8327_led {int dummy; } ;


 int ar8327_led_unregister (struct ar8327_led*) ;
 int kfree (struct ar8327_led*) ;

__attribute__((used)) static void
ar8327_led_destroy(struct ar8327_led *aled)
{
 ar8327_led_unregister(aled);
 kfree(aled);
}
