
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pDevice; TYPE_1__* pDataFlashDesc; } ;
struct TYPE_7__ {int pages_number; unsigned int pages_size; } ;
struct TYPE_6__ {scalar_t__ tx_data_size; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_3__* AT91PS_DataFlash ;


 int AT91C_DATAFLASH_BAD_COMMAND ;
 int AT91F_DataFlashSendCommand (TYPE_3__*,unsigned char,int,unsigned int) ;
 unsigned char DB_PAGE_2_BUF1_TRF ;
 unsigned char DB_PAGE_2_BUF2_TRF ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_MainMemoryToBufferTransfer(
 AT91PS_DataFlash pDataFlash,
 unsigned char BufferCommand,
 unsigned int page)
{
 int cmdsize;

 if ((BufferCommand != DB_PAGE_2_BUF1_TRF) && (BufferCommand != DB_PAGE_2_BUF2_TRF))
  return AT91C_DATAFLASH_BAD_COMMAND;


     pDataFlash->pDataFlashDesc->tx_data_size = 0;
 cmdsize = 4;
 if (pDataFlash->pDevice->pages_number >= 16384)
  cmdsize = 5;
 return(AT91F_DataFlashSendCommand(pDataFlash, BufferCommand, cmdsize,
                                   page*pDataFlash->pDevice->pages_size));
}
