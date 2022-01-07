
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int pages_size; scalar_t__ pages_number; } ;
struct TYPE_4__ {int id; scalar_t__ logical_address; TYPE_1__ Device; } ;






 int CFG_MAX_DATAFLASH_BANKS ;
 TYPE_2__* dataflash_info ;
 int printf (char*,...) ;

void AT91F_DataflashPrintInfo(void)
{
 int i;
 for (i = 0; i < CFG_MAX_DATAFLASH_BANKS; i++) {
  if (dataflash_info[i].id != 0) {
   printf ("DF:AT45DB");
   switch (dataflash_info[i].id) {
   case 130:
    printf ("161");
    break;

   case 129:
    printf ("321");
    break;

   case 128:
    printf ("642");
    break;
   case 131:
    printf ("128");
    break;
   }

   printf ("\n# PG: %6d\n"
    "PG SZ: %6d\n"
    "SZ=%8d bytes\n"
    "ADDR: %08X\n",
    (unsigned int) dataflash_info[i].Device.pages_number,
    (unsigned int) dataflash_info[i].Device.pages_size,
    (unsigned int) dataflash_info[i].Device.pages_number *
    dataflash_info[i].Device.pages_size,
    (unsigned int) dataflash_info[i].logical_address);
  }
 }
}
