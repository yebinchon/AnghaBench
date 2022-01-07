
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* PIO_CODR; void* PIO_OER; void* PIO_PER; } ;
struct TYPE_3__ {int SPI_MR; int SPI_CR; } ;


 TYPE_2__* AT91C_BASE_PIOB ;
 TYPE_1__* AT91C_BASE_SPI ;
 void* AT91C_PIO_PB7 ;
 int AT91C_SPI_PCS ;
 int AT91C_SPI_PCS0_SERIAL_DATAFLASH ;
 int AT91C_SPI_PCS3_DATAFLASH_CARD ;
 int AT91C_SPI_SPIEN ;

__attribute__((used)) static void AT91F_SpiEnable(int cs) {
 switch(cs) {
 case 0:
  AT91C_BASE_SPI->SPI_MR &= 0xFFF0FFFF;
  AT91C_BASE_SPI->SPI_MR |= ((AT91C_SPI_PCS0_SERIAL_DATAFLASH << 16) & AT91C_SPI_PCS);
  break;
 case 3:

  AT91C_BASE_PIOB->PIO_PER = AT91C_PIO_PB7;
  AT91C_BASE_PIOB->PIO_OER = AT91C_PIO_PB7;

  AT91C_BASE_PIOB->PIO_CODR = AT91C_PIO_PB7;

  AT91C_BASE_SPI->SPI_MR &= 0xFFF0FFFF;
  AT91C_BASE_SPI->SPI_MR |= ((AT91C_SPI_PCS3_DATAFLASH_CARD<<16) & AT91C_SPI_PCS);
  break;
 }


 AT91C_BASE_SPI->SPI_CR = AT91C_SPI_SPIEN;
}
