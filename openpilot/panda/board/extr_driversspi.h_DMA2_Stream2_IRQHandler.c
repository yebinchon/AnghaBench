
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LIFCR; } ;


 TYPE_1__* DMA2 ;
 int DMA_LIFCR_CTCIF2 ;
 int memset (scalar_t__,int,int) ;
 int puth (int) ;
 int puts (char*) ;
 int spi_buf ;
 int spi_cb_rx (int ,int,scalar_t__) ;
 scalar_t__ spi_tx_buf ;
 int spi_tx_dma (scalar_t__,int) ;

void DMA2_Stream2_IRQHandler(void) {
  int *resp_len = (int*)spi_tx_buf;
  (void)memset(spi_tx_buf, 0xaa, 0x44);
  *resp_len = spi_cb_rx(spi_buf, 0x14, spi_tx_buf+4);





  spi_tx_dma(spi_tx_buf, *resp_len + 4);


  DMA2->LIFCR = DMA_LIFCR_CTCIF2;
}
