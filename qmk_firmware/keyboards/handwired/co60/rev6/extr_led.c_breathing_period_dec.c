
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ breathing_period ;
 int breathing_period_set (scalar_t__) ;

void breathing_period_dec(void)
{
  breathing_period_set(breathing_period-1);
}
