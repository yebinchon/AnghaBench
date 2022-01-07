
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWBR ;
 scalar_t__ TWSR ;

void i2c_init(void)
{
  TWSR = 0;
  TWBR = 10;

}
