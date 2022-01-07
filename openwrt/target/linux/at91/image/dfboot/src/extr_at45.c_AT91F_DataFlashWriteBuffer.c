
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* command; unsigned char* tx_cmd_pt; int tx_cmd_size; unsigned char* rx_cmd_pt; int rx_cmd_size; unsigned char* rx_data_pt; unsigned char* tx_data_pt; int rx_data_size; int tx_data_size; } ;
struct TYPE_6__ {TYPE_3__* pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_5__ {unsigned int pages_size; int pages_number; unsigned int byte_mask; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_2__* AT91PS_DataFlash ;


 int AT91C_DATAFLASH_BAD_ADDRESS ;
 int AT91C_DATAFLASH_BAD_COMMAND ;
 int AT91F_SpiWrite (TYPE_3__*) ;
 unsigned char DB_BUF1_WRITE ;
 unsigned char DB_BUF2_WRITE ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_DataFlashWriteBuffer(
 AT91PS_DataFlash pDataFlash,
 unsigned char BufferCommand,
 unsigned char *dataBuffer,
 unsigned int bufferAddress,
 int SizeToWrite )
{
 int cmdsize;

 if ((BufferCommand != DB_BUF1_WRITE) && (BufferCommand != DB_BUF2_WRITE))
  return AT91C_DATAFLASH_BAD_COMMAND;


 if (bufferAddress > pDataFlash->pDevice->pages_size)
  return AT91C_DATAFLASH_BAD_ADDRESS;


 pDataFlash->pDataFlashDesc->command[0] = BufferCommand;
 pDataFlash->pDataFlashDesc->command[1] = 0;
 if (pDataFlash->pDevice->pages_number >= 16384)
 {
     pDataFlash->pDataFlashDesc->command[2] = 0;
     pDataFlash->pDataFlashDesc->command[3] = (unsigned char)(((unsigned int)(bufferAddress & pDataFlash->pDevice->byte_mask)) >> 8) ;
     pDataFlash->pDataFlashDesc->command[4] = (unsigned char)((unsigned int)bufferAddress & 0x00FF) ;
  cmdsize = 5;
 }
 else
 {
     pDataFlash->pDataFlashDesc->command[2] = (unsigned char)(((unsigned int)(bufferAddress & pDataFlash->pDevice->byte_mask)) >> 8) ;
     pDataFlash->pDataFlashDesc->command[3] = (unsigned char)((unsigned int)bufferAddress & 0x00FF) ;
     pDataFlash->pDataFlashDesc->command[4] = 0;
  cmdsize = 4;
 }

 pDataFlash->pDataFlashDesc->tx_cmd_pt = pDataFlash->pDataFlashDesc->command ;
 pDataFlash->pDataFlashDesc->tx_cmd_size = cmdsize ;
 pDataFlash->pDataFlashDesc->rx_cmd_pt = pDataFlash->pDataFlashDesc->command ;
 pDataFlash->pDataFlashDesc->rx_cmd_size = cmdsize ;

 pDataFlash->pDataFlashDesc->rx_data_pt = dataBuffer ;
 pDataFlash->pDataFlashDesc->tx_data_pt = dataBuffer ;
 pDataFlash->pDataFlashDesc->rx_data_size = SizeToWrite ;
 pDataFlash->pDataFlashDesc->tx_data_size = SizeToWrite ;

 return AT91F_SpiWrite(pDataFlash->pDataFlashDesc);
}
