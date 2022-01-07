
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* DataFlash_state; } ;
struct TYPE_4__ {int pages_number; int pages_size; int page_offset; int byte_mask; void* cs; } ;
struct TYPE_5__ {int id; void* logical_address; TYPE_3__ Desc; TYPE_1__ Device; } ;






 int AT91F_DataflashProbe (void*,TYPE_3__*) ;
 int AT91F_SpiInit () ;
 int CFG_MAX_DATAFLASH_BANKS ;
 void* IDLE ;
 void*** cs ;
 TYPE_2__* dataflash_info ;

int AT91F_DataflashInit(void)
{
 int i;
 int dfcode;
 int Nb_device = 0;

 AT91F_SpiInit();

 for (i = 0; i < CFG_MAX_DATAFLASH_BANKS; i++) {
  dataflash_info[i].id = 0;
  dataflash_info[i].Device.pages_number = 0;
  dfcode = AT91F_DataflashProbe (cs[i][1], &dataflash_info[i].Desc);

  switch (dfcode) {
  case 130:
   dataflash_info[i].Device.pages_number = 4096;
   dataflash_info[i].Device.pages_size = 528;
   dataflash_info[i].Device.page_offset = 10;
   dataflash_info[i].Device.byte_mask = 0x300;
   dataflash_info[i].Device.cs = cs[i][1];
   dataflash_info[i].Desc.DataFlash_state = IDLE;
   dataflash_info[i].logical_address = cs[i][0];
   dataflash_info[i].id = dfcode;
   Nb_device++;
   break;

  case 129:
   dataflash_info[i].Device.pages_number = 8192;
   dataflash_info[i].Device.pages_size = 528;
   dataflash_info[i].Device.page_offset = 10;
   dataflash_info[i].Device.byte_mask = 0x300;
   dataflash_info[i].Device.cs = cs[i][1];
   dataflash_info[i].Desc.DataFlash_state = IDLE;
   dataflash_info[i].logical_address = cs[i][0];
   dataflash_info[i].id = dfcode;
   Nb_device++;
   break;

  case 128:
   dataflash_info[i].Device.pages_number = 8192;
   dataflash_info[i].Device.pages_size = 1056;
   dataflash_info[i].Device.page_offset = 11;
   dataflash_info[i].Device.byte_mask = 0x700;
   dataflash_info[i].Device.cs = cs[i][1];
   dataflash_info[i].Desc.DataFlash_state = IDLE;
   dataflash_info[i].logical_address = cs[i][0];
   dataflash_info[i].id = dfcode;
   Nb_device++;
   break;
  case 131:
   dataflash_info[i].Device.pages_number = 16384;
   dataflash_info[i].Device.pages_size = 1056;
   dataflash_info[i].Device.page_offset = 11;
   dataflash_info[i].Device.byte_mask = 0x700;
   dataflash_info[i].Device.cs = cs[i][1];
   dataflash_info[i].Desc.DataFlash_state = IDLE;
   dataflash_info[i].logical_address = cs[i][0];
   dataflash_info[i].id = dfcode;
   Nb_device++;
   break;
  default:
   break;
  }
 }
 return (Nb_device);
}
