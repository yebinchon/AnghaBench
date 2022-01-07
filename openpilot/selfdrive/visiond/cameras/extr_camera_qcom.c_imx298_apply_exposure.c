
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msm_camera_i2c_reg_array {int member_0; int member_1; int member_2; } ;
struct TYPE_4__ {double digital_gain; } ;
typedef TYPE_1__ CameraState ;


 int ARRAYSIZE (struct msm_camera_i2c_reg_array*) ;
 int LOGE (char*,int) ;
 int MSM_CAMERA_I2C_BYTE_DATA ;
 int min (int,int) ;
 int sensor_write_regs (TYPE_1__*,struct msm_camera_i2c_reg_array*,int ,int ) ;

__attribute__((used)) static int imx298_apply_exposure(CameraState *s, int gain, int integ_lines, int frame_length) {
  int err;

  int analog_gain = min(gain, 448);

  if (gain > 448) {
    s->digital_gain = (512.0/(512-(gain))) / 8.0;
  } else {
    s->digital_gain = 1.0;
  }



  int digital_gain = 0x100;

  float white_balance[] = {0.4609375, 1.0, 0.546875};


  int digital_gain_gr = digital_gain / white_balance[1];
  int digital_gain_gb = digital_gain / white_balance[1];
  int digital_gain_r = digital_gain / white_balance[0];
  int digital_gain_b = digital_gain / white_balance[2];

  struct msm_camera_i2c_reg_array reg_array[] = {

    {0x104,0x1,0},
    {0x3002,0x0,0},


    {0x340, frame_length >> 8, 0}, {0x341, frame_length & 0xff, 0},

    {0x202, integ_lines >> 8, 0}, {0x203, integ_lines & 0xff,0},


    {0x204, analog_gain >> 8, 0}, {0x205, analog_gain & 0xff,0},
    {0x104,0x0,0},
  };

  err = sensor_write_regs(s, reg_array, ARRAYSIZE(reg_array), MSM_CAMERA_I2C_BYTE_DATA);
  if (err != 0) {
    LOGE("apply_exposure err %d", err);
  }
  return err;
}
