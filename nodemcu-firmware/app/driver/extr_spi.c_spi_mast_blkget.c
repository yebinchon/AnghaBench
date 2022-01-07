
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int READ_PERI_REG (int ) ;
 int SPI_CMD (int ) ;
 int SPI_USR ;
 scalar_t__ SPI_W0 (int ) ;
 int os_memcpy (void*,void*,size_t) ;

void spi_mast_blkget(uint8 spi_no, size_t bitlen, uint8 *data)
{
    size_t aligned_len = bitlen >> 3;

    while(READ_PERI_REG(SPI_CMD(spi_no)) & SPI_USR);

    if (aligned_len % 4) {


        aligned_len += 4 - (aligned_len % 4);
    }
    os_memcpy((void *)data, (void *)SPI_W0(spi_no), aligned_len);
}
