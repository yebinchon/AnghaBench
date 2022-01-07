
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double kp; double ki; double kd; int t_target; int ts; } ;


 TYPE_1__ p_param ;
 int target_temp_user ;
 int ticktime ;

int init_thermal_controller(void)
{
 int ret = 0;


 p_param.ts = ticktime;

 p_param.kp = .36;
 p_param.ki = 5.0;
 p_param.kd = 0.19;

 p_param.t_target = target_temp_user;

 return ret;
}
