
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef unsigned long uint32 ;
typedef int uint16 ;
struct TYPE_2__ {int* word; int dword; } ;
typedef TYPE_1__ spi_buf_t ;


 int READ_PERI_REG (scalar_t__) ;
 scalar_t__ SPI_CMD (int) ;
 int SPI_USR ;
 scalar_t__ SPI_W0 (int) ;
 void* swap_endianess (int) ;

uint32 spi_mast_get_miso(uint8 spi_no, uint16 offset, uint8 bitlen)
{
    uint8 wn;
    spi_buf_t spi_buf;
    uint32 result;

    if (spi_no > 1)
        return 0;


    wn = offset >> 5;
    if (wn > 15)
        return 0;

    while(READ_PERI_REG(SPI_CMD(spi_no)) & SPI_USR);


    spi_buf.word[1] = READ_PERI_REG(SPI_W0(spi_no) + wn*4);
    spi_buf.word[1] = swap_endianess(spi_buf.word[1]);
    if (wn < 15) {
        spi_buf.word[0] = READ_PERI_REG(SPI_W0(spi_no) + (wn+1)*4);
        spi_buf.word[0] = swap_endianess(spi_buf.word[0]);
    }

    result = (uint32)(spi_buf.dword >> (64 - ((offset & 0x1f) + bitlen)));
    result &= (1UL << bitlen)-1;

    return result;
}
