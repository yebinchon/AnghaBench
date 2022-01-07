
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CameraState ;


 int ARRAYSIZE (int ) ;
 int LOG (char*,int) ;
 int MSM_CAMERA_I2C_BYTE_DATA ;
 int sensor_write_regs (int *,int ,int ,int ) ;
 int set_exposure (int *,double,double) ;
 int start_reg_array ;

__attribute__((used)) static void front_start(CameraState *s) {
  int err;

  set_exposure(s, 1.0, 1.0);

  err = sensor_write_regs(s, start_reg_array, ARRAYSIZE(start_reg_array), MSM_CAMERA_I2C_BYTE_DATA);
  LOG("sensor start regs: %d", err);
}
