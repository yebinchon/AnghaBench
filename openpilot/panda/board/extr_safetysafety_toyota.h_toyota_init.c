
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 scalar_t__ controls_allowed ;
 scalar_t__ toyota_camera_forwarded ;
 int toyota_dbc_eps_torque_factor ;
 scalar_t__ toyota_giraffe_switch_1 ;

__attribute__((used)) static void toyota_init(int16_t param) {
  controls_allowed = 0;
  toyota_giraffe_switch_1 = 0;
  toyota_camera_forwarded = 0;
  toyota_dbc_eps_torque_factor = param;
}
