
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pDevice; int pDataFlashDesc; } ;
struct TYPE_8__ {unsigned int pages_size; int pages_number; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_2__* AT91PS_DataFlash ;


 int AT91C_DATAFLASH_TIMEOUT ;
 int AT91F_DataFlashWaitReady (int ,int ) ;
 int AT91F_DataFlashWriteBuffer (TYPE_2__*,int ,unsigned char*,unsigned int,unsigned int) ;
 int AT91F_MainMemoryToBufferTransfer (TYPE_2__*,int ,unsigned int) ;
 int AT91F_PageErase (TYPE_2__*,unsigned int) ;
 int AT91F_WriteBufferToMain (TYPE_2__*,int ,unsigned int) ;
 int DB_BUF1_PAGE_ERASE_PGM ;
 int DB_BUF1_WRITE ;
 int DB_PAGE_2_BUF1_TRF ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_PartialPageWrite (
 AT91PS_DataFlash pDataFlash,
 unsigned char *src,
 unsigned int dest,
 unsigned int size)
{
 unsigned int page;
 unsigned int AdrInPage;

 page = dest / (pDataFlash->pDevice->pages_size);
 AdrInPage = dest % (pDataFlash->pDevice->pages_size);


 AT91F_MainMemoryToBufferTransfer(pDataFlash, DB_PAGE_2_BUF1_TRF, page);
 AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);


 AT91F_DataFlashWriteBuffer(pDataFlash, DB_BUF1_WRITE, src, AdrInPage, size);
 AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);


 if (pDataFlash->pDevice->pages_number >= 16384)
 {
  AT91F_PageErase(pDataFlash, page);
  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
 }


 return(AT91F_WriteBufferToMain(pDataFlash, DB_BUF1_PAGE_ERASE_PGM,
                                (page*pDataFlash->pDevice->pages_size)));
}
