
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int I2CTransmitWord (int,int) ;

__attribute__((used)) static void
I2cSetFrontpanelLed(UCHAR b)
{
  I2CTransmitWord( 0x10, 0x800 | b);
  I2CTransmitWord( 0x10, 0x701);
}
