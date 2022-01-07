
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int WriteToSMBus (int ,int,int,int) ;

__attribute__((used)) static BOOLEAN
I2CTransmitWord(UCHAR bPicAddressI2cFormat, USHORT wDataToWrite)
{
  return WriteToSMBus(bPicAddressI2cFormat,(wDataToWrite>>8)&0xff,1,(wDataToWrite&0xff));
}
