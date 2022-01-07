
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ MBOOT_SPIFLASH2_ADDR ;
 scalar_t__ MBOOT_SPIFLASH2_BYTE_SIZE ;
 int MBOOT_SPIFLASH2_SPIFLASH ;
 scalar_t__ MBOOT_SPIFLASH_ADDR ;
 scalar_t__ MBOOT_SPIFLASH_BYTE_SIZE ;
 int MBOOT_SPIFLASH_SPIFLASH ;
 int memcpy (int *,void*,int) ;
 int mp_spiflash_read (int ,scalar_t__,int,int *) ;

void do_read(uint32_t addr, int len, uint8_t *buf) {
    memcpy(buf, (void*)addr, len);
}
