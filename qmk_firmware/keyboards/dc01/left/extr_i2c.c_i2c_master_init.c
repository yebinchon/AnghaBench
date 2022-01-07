
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_CPU ;
 int SCL_CLOCK ;
 int TWBR ;
 scalar_t__ TWSR ;

void i2c_master_init(void) {

  TWSR = 0;


  TWBR = ((F_CPU/SCL_CLOCK)-16)/2;
}
