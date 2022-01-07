
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int LED0 ;
 scalar_t__ MBOOT_SPIFLASH2_ADDR ;
 scalar_t__ MBOOT_SPIFLASH2_BYTE_SIZE ;
 int MBOOT_SPIFLASH2_ERASE_BLOCKS_PER_PAGE ;
 int MBOOT_SPIFLASH2_SPIFLASH ;
 scalar_t__ MBOOT_SPIFLASH_ADDR ;
 scalar_t__ MBOOT_SPIFLASH_BYTE_SIZE ;
 int MBOOT_SPIFLASH_ERASE_BLOCKS_PER_PAGE ;
 int MBOOT_SPIFLASH_SPIFLASH ;
 int MP_SPIFLASH_ERASE_BLOCK_SIZE ;
 int flash_page_erase (scalar_t__,scalar_t__*) ;
 int led_state (int ,int) ;
 int spiflash_page_erase (int ,scalar_t__,int) ;

int do_page_erase(uint32_t addr, uint32_t *next_addr) {
    led_state(LED0, 1);
    return flash_page_erase(addr, next_addr);
}
