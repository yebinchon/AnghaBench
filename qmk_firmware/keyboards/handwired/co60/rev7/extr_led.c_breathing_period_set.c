
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int breathing_period ;

void breathing_period_set(uint8_t value)
{
  if (!value)
    value = 1;
  breathing_period = value;
}
