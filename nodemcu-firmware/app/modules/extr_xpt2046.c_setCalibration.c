
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
typedef void* int32_t ;


 int CAL_MARGIN ;
 void* _cal_dvi ;
 void* _cal_dvj ;
 scalar_t__ _cal_dx ;
 scalar_t__ _cal_dy ;
 void* _cal_vi1 ;
 void* _cal_vj1 ;
 scalar_t__ _height ;
 scalar_t__ _width ;

__attribute__((used)) static void setCalibration (uint16_t vi1, uint16_t vj1, uint16_t vi2, uint16_t vj2) {
  _cal_dx = _width - 2*CAL_MARGIN;
  _cal_dy = _height - 2*CAL_MARGIN;

  _cal_vi1 = (int32_t)vi1;
  _cal_vj1 = (int32_t)vj1;
  _cal_dvi = (int32_t)vi2 - vi1;
  _cal_dvj = (int32_t)vj2 - vj1;
}
