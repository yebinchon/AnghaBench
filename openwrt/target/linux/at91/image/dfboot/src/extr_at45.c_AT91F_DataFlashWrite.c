
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_8__ {int pages_size; int pages_number; int cs; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_2__* AT91PS_DataFlash ;


 int AT91C_DATAFLASH_ERROR ;
 int AT91C_DATAFLASH_MEMORY_OVERFLOW ;
 int AT91C_DATAFLASH_OK ;
 int AT91C_DATAFLASH_TIMEOUT ;
 int AT91F_DataFlashWaitReady (int ,int ) ;
 unsigned int AT91F_DataFlashWriteBuffer (TYPE_2__*,int ,unsigned char*,int ,unsigned int) ;
 unsigned int AT91F_PageErase (TYPE_2__*,unsigned int) ;
 int AT91F_PartialPageWrite (TYPE_2__*,unsigned char*,int,int) ;
 int AT91F_SpiEnable (int ) ;
 unsigned int AT91F_WriteBufferToMain (TYPE_2__*,int ,int) ;
 int DB_BUF1_PAGE_PGM ;
 int DB_BUF1_WRITE ;

AT91S_DataFlashStatus AT91F_DataFlashWrite(
 AT91PS_DataFlash pDataFlash,
 unsigned char *src,
 int dest,
 int size )
{
 unsigned int length;
 unsigned int page;
 unsigned int status;

 AT91F_SpiEnable(pDataFlash->pDevice->cs);

 if ( (dest + size) > (pDataFlash->pDevice->pages_size * (pDataFlash->pDevice->pages_number)))
  return AT91C_DATAFLASH_MEMORY_OVERFLOW;


 if ((dest % ((unsigned int)(pDataFlash->pDevice->pages_size))) != 0 ) {
  length = pDataFlash->pDevice->pages_size - (dest % ((unsigned int)(pDataFlash->pDevice->pages_size)));

  if (size < length)
   length = size;

  if(!AT91F_PartialPageWrite(pDataFlash,src, dest, length))
   return AT91C_DATAFLASH_ERROR;

  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);


         size -= length;
         dest += length;
         src += length;
 }

 while (( size - pDataFlash->pDevice->pages_size ) >= 0 )
 {

  page = (unsigned int)dest / (pDataFlash->pDevice->pages_size);

  status = AT91F_DataFlashWriteBuffer(pDataFlash, DB_BUF1_WRITE, src,
                                      0, pDataFlash->pDevice->pages_size);
  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);

  status = AT91F_PageErase(pDataFlash, page);
  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
  if (!status)
   return AT91C_DATAFLASH_ERROR;

  status = AT91F_WriteBufferToMain (pDataFlash, DB_BUF1_PAGE_PGM, dest);
  if(!status)
   return AT91C_DATAFLASH_ERROR;

  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);


     size -= pDataFlash->pDevice->pages_size ;
     dest += pDataFlash->pDevice->pages_size ;
     src += pDataFlash->pDevice->pages_size ;
 }


 if ( size > 0 ) {

  if(!AT91F_PartialPageWrite(pDataFlash, src, dest, size) )
   return AT91C_DATAFLASH_ERROR;
  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
 }
 return AT91C_DATAFLASH_OK;
}
