
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int GPIO_OUT_W1TC_ADDRESS ;
 int GPIO_OUT_W1TS_ADDRESS ;
 int GPIO_REG_WRITE (int ,int const) ;

__attribute__((used)) static inline void setGpioPins(const uint16_t enabledGpioMask, const register uint16_t maskOn) {
  GPIO_REG_WRITE(GPIO_OUT_W1TS_ADDRESS, maskOn);
  const register uint16_t maskOff = ~maskOn & enabledGpioMask;
  GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, maskOff);
}
