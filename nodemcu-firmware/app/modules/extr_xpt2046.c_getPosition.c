
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ CAL_MARGIN ;
 int _cal_dvi ;
 int _cal_dvj ;
 int _cal_dx ;
 int _cal_dy ;
 int _cal_vi1 ;
 int _cal_vj1 ;
 int getRaw (int*,int*) ;
 scalar_t__ isTouching () ;

__attribute__((used)) static void getPosition (uint16_t *x, uint16_t *y) {
  if (isTouching() == 0) {
    *x = *y = 0xffff;
    return;
  }
  uint16_t vi, vj;

  getRaw(&vi, &vj);


  *x = (uint16_t)(_cal_dx * (vj - _cal_vj1) / _cal_dvj + CAL_MARGIN);
  if (*x > 0x7fff) *x = 0;
  *y = (uint16_t)(_cal_dy * (vi - _cal_vi1) / _cal_dvi + CAL_MARGIN);
  if (*y > 0x7fff) *y = 0;
}
