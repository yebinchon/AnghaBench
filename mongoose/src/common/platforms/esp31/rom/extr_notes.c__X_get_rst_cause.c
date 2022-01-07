
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int GET_PERI_REG_BITS (int,int,int ) ;
 int RTC_CNTL_SLP_WAKEUP ;
 int RTC_STATE0 ;
 int RTC_STATE1 ;

int _X_get_rst_cause(void) {
  int ret;
  int a = GET_PERI_REG_BITS(RTC_STATE1, 6, 0);
  if (a == 5) {
    int b = (RTC_STATE1 >> 12) && 0xfff;
    if (b != 1) {
      ret = (b == 8 ? a : 0);
    } else {
      ret = 20;
    }
  } else {
    ret = a;
  }
  CLEAR_PERI_REG_MASK(RTC_STATE0, RTC_CNTL_SLP_WAKEUP);
  return ret;
}
