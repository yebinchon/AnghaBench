
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SPI_TransferByte (int) ;
 int TP_CS_HI ;
 int TP_CS_LO ;

uint8_t readRegister(uint8_t address) {
  uint8_t data;

  TP_CS_LO;


  SPI_TransferByte(address);
  data = SPI_TransferByte(0x00);

  TP_CS_HI;

  return data;
}
