
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* CRC32 ) (unsigned char const*,unsigned int,unsigned int*) ;} ;


 unsigned int AT91C_BOOT_ADDR ;
 int AT91C_BOOT_DATAFLASH_ADDR ;
 scalar_t__ AT91C_DATAFLASH_OK ;
 scalar_t__ AT91C_OFFSET_VECT6 ;
 int IMAGE_BAD_SIZE ;
 int IMAGE_CRC_ERROR ;
 int IMAGE_READ_FAILURE ;
 int SUCCESS ;
 int crc1 ;
 int crc2 ;
 TYPE_1__* pAT91 ;
 int printf (char*,...) ;
 scalar_t__ read_dataflash (int ,unsigned int volatile,char*) ;
 int stub1 (unsigned char const*,unsigned int,unsigned int*) ;

__attribute__((used)) static int AT91F_LoadBoot(void)
{

 volatile unsigned int SizeToDownload = 0x21400;
 volatile unsigned int AddressToDownload = AT91C_BOOT_ADDR;
 if (read_dataflash(AT91C_BOOT_DATAFLASH_ADDR, SizeToDownload + 8,
                    (char *)AddressToDownload) != AT91C_DATAFLASH_OK)
 {
  printf("F DF RD\n");
  return IMAGE_READ_FAILURE;
 }
 return SUCCESS;
}
