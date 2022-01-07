
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;



int timelib_valid_time(timelib_sll h, timelib_sll i, timelib_sll s)
{
 if (h < 0 || h > 23 || i < 0 || i > 59 || s < 0 || s > 59) {
  return 0;
 }
 return 1;
}
