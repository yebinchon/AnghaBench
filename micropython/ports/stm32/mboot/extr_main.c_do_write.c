
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int LED0 ;
 scalar_t__ MBOOT_SPIFLASH2_ADDR ;
 scalar_t__ MBOOT_SPIFLASH2_BYTE_SIZE ;
 int MBOOT_SPIFLASH2_SPIFLASH ;
 scalar_t__ MBOOT_SPIFLASH_ADDR ;
 scalar_t__ MBOOT_SPIFLASH_BYTE_SIZE ;
 int MBOOT_SPIFLASH_SPIFLASH ;
 int flash_write (scalar_t__,int const*,size_t) ;
 int led_state (int ,int) ;
 int mp_spiflash_write (int ,scalar_t__,size_t,int const*) ;

int do_write(uint32_t addr, const uint8_t *src8, size_t len) {
    static uint32_t led_tog = 0;
    led_state(LED0, (led_tog++) & 4);
    return flash_write(addr, src8, len);
}
