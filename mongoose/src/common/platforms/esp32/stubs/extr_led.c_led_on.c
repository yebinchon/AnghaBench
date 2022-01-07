
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_OUT1_W1TS_REG ;
 int GPIO_OUT_W1TS_REG ;
 int WRITE_PERI_REG (int ,int) ;

void led_on(int io) {
  if (io < 32) {
    WRITE_PERI_REG(GPIO_OUT_W1TS_REG, 1 << io);
  } else {
    WRITE_PERI_REG(GPIO_OUT1_W1TS_REG, 1 << (io - 32));
  }
}
