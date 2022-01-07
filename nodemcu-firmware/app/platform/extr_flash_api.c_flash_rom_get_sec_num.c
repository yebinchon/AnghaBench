
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int SPI_FLASH_SEC_SIZE ;
 int flash_rom_get_size_byte () ;

uint16_t flash_rom_get_sec_num(void)
{
    return ( flash_rom_get_size_byte() / (SPI_FLASH_SEC_SIZE) );
}
