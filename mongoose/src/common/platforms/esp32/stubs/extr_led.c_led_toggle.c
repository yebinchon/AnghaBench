
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_OUT_REG ;
 int GPIO_OUT_W1TC_REG ;
 int GPIO_OUT_W1TS_REG ;
 scalar_t__ READ_PERI_REG (int) ;
 int WRITE_PERI_REG (int ,int) ;

void led_toggle(int io) {
  if (READ_PERI_REG(GPIO_OUT_REG & (1 << io))) {
    WRITE_PERI_REG(GPIO_OUT_W1TC_REG, 1 << io);
  } else {
    WRITE_PERI_REG(GPIO_OUT_W1TS_REG, 1 << io);
  }
}
