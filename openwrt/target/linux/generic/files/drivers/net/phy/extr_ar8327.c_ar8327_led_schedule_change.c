
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ar8327_led {scalar_t__ pattern; int led_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void
ar8327_led_schedule_change(struct ar8327_led *aled, u8 pattern)
{
 if (aled->pattern == pattern)
  return;

 aled->pattern = pattern;
 schedule_work(&aled->led_work);
}
