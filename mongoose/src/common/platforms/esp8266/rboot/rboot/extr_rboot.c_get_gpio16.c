
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int PAD_XPD_DCDC_CONF ;
 int READ_PERI_REG (int ) ;
 int RTC_GPIO_CONF ;
 int RTC_GPIO_ENABLE ;
 int RTC_GPIO_IN_DATA ;
 int RTC_GPIO_OUT ;
 int WRITE_PERI_REG (int ,int) ;

__attribute__((used)) static uint32 get_gpio16(void) {

 WRITE_PERI_REG(RTC_GPIO_OUT, (READ_PERI_REG(RTC_GPIO_OUT) & (uint32)0xfffffffe) | (uint32)(1));


 WRITE_PERI_REG(PAD_XPD_DCDC_CONF, (READ_PERI_REG(PAD_XPD_DCDC_CONF) & 0xffffffbc) | (uint32)0x1);
 WRITE_PERI_REG(RTC_GPIO_CONF, (READ_PERI_REG(RTC_GPIO_CONF) & (uint32)0xfffffffe) | (uint32)0x0);
 WRITE_PERI_REG(RTC_GPIO_ENABLE, READ_PERI_REG(RTC_GPIO_ENABLE) & (uint32)0xfffffffe);

 uint32 x = (READ_PERI_REG(RTC_GPIO_IN_DATA) & 1);

 return x;
}
