
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int WIZCHIP_TXBUF_BLOCK (int ) ;
 int WIZCHIP_WRITE_BUF (int,int *,scalar_t__) ;
 scalar_t__ getSn_TX_WR (int ) ;
 int setSn_TX_WR (int ,scalar_t__) ;

void wiz_send_data(uint8_t sn, uint8_t *wizdata, uint16_t len)
{
   uint16_t ptr = 0;
   uint32_t addrsel = 0;

   if(len == 0) return;
   ptr = getSn_TX_WR(sn);


   addrsel = ((uint32_t)ptr << 8) + (WIZCHIP_TXBUF_BLOCK(sn) << 3);

   WIZCHIP_WRITE_BUF(addrsel,wizdata, len);

   ptr += len;
   setSn_TX_WR(sn,ptr);
}
