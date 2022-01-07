
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* cadillac_desired_torque_last ;

void set_cadillac_desired_torque_last(int t){
  for (int i = 0; i < 4; i++) cadillac_desired_torque_last[i] = t;
}
