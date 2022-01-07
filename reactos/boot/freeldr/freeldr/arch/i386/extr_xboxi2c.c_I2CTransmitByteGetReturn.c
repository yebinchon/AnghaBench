
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int ReadfromSMBus (int ,int ,int,int *) ;

BOOLEAN
I2CTransmitByteGetReturn(UCHAR bPicAddressI2cFormat, UCHAR bDataToWrite, ULONG *Return)
{
  return ReadfromSMBus(bPicAddressI2cFormat, bDataToWrite, 1, Return);
}
