
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_I2S ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;

void I2SIntUnregister(unsigned long ulBase)
{



  IntDisable(INT_I2S);




  IntUnregister(INT_I2S);

}
