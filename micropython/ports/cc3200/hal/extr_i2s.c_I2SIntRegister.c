
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_I2S ;
 int IntEnable (int ) ;
 int IntRegister (int ,void (*) ()) ;

void I2SIntRegister(unsigned long ulBase, void (*pfnHandler)(void))
{



  IntRegister(INT_I2S,pfnHandler);




  IntEnable(INT_I2S);
}
