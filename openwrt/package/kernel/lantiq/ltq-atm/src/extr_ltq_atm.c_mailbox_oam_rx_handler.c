
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uni_cell_header {scalar_t__ pti; int vci; int vpi; } ;
struct rx_descriptor {int own; size_t datalen; scalar_t__ c; scalar_t__ byteoff; } ;
struct atm_vcc {int (* push_oam ) (struct atm_vcc*,struct uni_cell_header*) ;} ;
struct TYPE_6__ {unsigned int vlddes; } ;
struct TYPE_5__ {size_t oam_desc_pos; struct rx_descriptor* oam_desc; int wrx_drop_oam; int wrx_oam; TYPE_1__* conn; int * oam_buf; } ;
struct TYPE_4__ {struct atm_vcc* vcc; } ;


 int ASSERT (int,char*,unsigned int,int,int,size_t) ;
 scalar_t__ ATM_PTI_E2EF5 ;
 scalar_t__ ATM_PTI_SEGF5 ;
 int CELL_SIZE ;
 int RX_DMA_CH_OAM ;
 size_t RX_DMA_CH_OAM_BUF_SIZE ;
 size_t RX_DMA_CH_OAM_DESC_LEN ;
 TYPE_3__* WRX_DMA_CHANNEL_CONFIG (int ) ;
 int adsl_led_flash () ;
 int dma_cache_inv (unsigned long,int ) ;
 int find_vpi (int ) ;
 int find_vpivci (int ,int) ;
 TYPE_2__ g_atm_priv_data ;
 int ifx_push_oam (unsigned char*) ;
 int mailbox_signal (int ,int ) ;
 int stub1 (struct atm_vcc*,struct uni_cell_header*) ;

__attribute__((used)) static inline void mailbox_oam_rx_handler(void)
{
 unsigned int vlddes = WRX_DMA_CHANNEL_CONFIG(RX_DMA_CH_OAM)->vlddes;
 struct rx_descriptor reg_desc;
 struct uni_cell_header *header;
 int conn;
 struct atm_vcc *vcc;
 unsigned int i;

 for ( i = 0; i < vlddes; i++ ) {
  unsigned int loop_count = 0;

  do {
   reg_desc = g_atm_priv_data.oam_desc[g_atm_priv_data.oam_desc_pos];
   if ( ++loop_count == 1000 )
    break;
  } while ( reg_desc.own || !reg_desc.c );
  ASSERT(loop_count == 1, "loop_count = %u, own = %d, c = %d, oam_desc_pos = %u", loop_count, (int)reg_desc.own, (int)reg_desc.c, g_atm_priv_data.oam_desc_pos);

  header = (struct uni_cell_header *)&g_atm_priv_data.oam_buf[g_atm_priv_data.oam_desc_pos * RX_DMA_CH_OAM_BUF_SIZE];

  if ( header->pti == ATM_PTI_SEGF5 || header->pti == ATM_PTI_E2EF5 )
   conn = find_vpivci(header->vpi, header->vci);
  else if ( header->vci == 0x03 || header->vci == 0x04 )
   conn = find_vpi(header->vpi);
  else
   conn = -1;

  if ( conn >= 0 && g_atm_priv_data.conn[conn].vcc != ((void*)0) ) {
   vcc = g_atm_priv_data.conn[conn].vcc;

   if ( vcc->push_oam != ((void*)0) )
    vcc->push_oam(vcc, header);
   else
    ifx_push_oam((unsigned char *)header);

   g_atm_priv_data.wrx_oam++;

   adsl_led_flash();
  } else
   g_atm_priv_data.wrx_drop_oam++;

  reg_desc.byteoff = 0;
  reg_desc.datalen = RX_DMA_CH_OAM_BUF_SIZE;
  reg_desc.own = 1;
  reg_desc.c = 0;

  g_atm_priv_data.oam_desc[g_atm_priv_data.oam_desc_pos] = reg_desc;
  if ( ++g_atm_priv_data.oam_desc_pos == RX_DMA_CH_OAM_DESC_LEN )
   g_atm_priv_data.oam_desc_pos = 0;

  dma_cache_inv((unsigned long)header, CELL_SIZE);
  mailbox_signal(RX_DMA_CH_OAM, 0);
 }
}
