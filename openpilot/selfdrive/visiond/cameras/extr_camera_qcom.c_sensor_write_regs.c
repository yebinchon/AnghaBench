
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct msm_camera_i2c_reg_setting* setting; } ;
struct sensorb_cfg_data {TYPE_1__ cfg; int cfgtype; int member_0; } ;
struct msm_camera_i2c_reg_setting {size_t size; int data_type; int delay; int addr_type; struct msm_camera_i2c_reg_array* reg_setting; } ;
struct msm_camera_i2c_reg_array {int dummy; } ;
struct TYPE_5__ {int sensor_fd; } ;
typedef TYPE_2__ CameraState ;


 int CFG_WRITE_I2C_ARRAY ;
 int MSM_CAMERA_I2C_WORD_ADDR ;
 int VIDIOC_MSM_SENSOR_CFG ;
 int ioctl (int ,int ,struct sensorb_cfg_data*) ;

int sensor_write_regs(CameraState *s, struct msm_camera_i2c_reg_array* arr, size_t size, int data_type) {
  struct msm_camera_i2c_reg_setting out_settings = {
    .reg_setting = arr,
    .size = size,
    .addr_type = MSM_CAMERA_I2C_WORD_ADDR,
    .data_type = data_type,
    .delay = 0,
  };
  struct sensorb_cfg_data cfg_data = {0};
  cfg_data.cfgtype = CFG_WRITE_I2C_ARRAY;
  cfg_data.cfg.setting = &out_settings;
  return ioctl(s->sensor_fd, VIDIOC_MSM_SENSOR_CFG, &cfg_data);
}
