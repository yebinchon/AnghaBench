
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min; int max; } ;


 TYPE_1__ gm_torque_driver ;

void set_gm_torque_driver(int min, int max){
  gm_torque_driver.min = min;
  gm_torque_driver.max = max;
}
