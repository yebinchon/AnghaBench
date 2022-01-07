
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ RXBuffIndex ;
 scalar_t__ RXBuffLen ;
 scalar_t__ RXMAXBUFLEN ;
 int TWITransmitData (scalar_t__*,int,scalar_t__,int ) ;

uint8_t TWIReadData(uint8_t TWIaddr, uint8_t bytesToRead, uint8_t repStart)
{

 if (bytesToRead < RXMAXBUFLEN)
 {

  RXBuffIndex = 0;
  RXBuffLen = bytesToRead;

  uint8_t TXdata[1];

  TXdata[0] = (TWIaddr << 1) | 0x01;

  TWITransmitData(TXdata, 1, repStart, 0);
 }
 else
 {
  return 0;
 }
 return 1;
}
