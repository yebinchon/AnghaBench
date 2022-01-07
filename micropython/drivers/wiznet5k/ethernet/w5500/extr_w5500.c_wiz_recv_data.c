
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int WIZCHIP_READ_BUF (int,int *,scalar_t__) ;
 int WIZCHIP_RXBUF_BLOCK (int ) ;
 scalar_t__ getSn_RX_RD (int ) ;
 int setSn_RX_RD (int ,scalar_t__) ;

void wiz_recv_data(uint8_t sn, uint8_t *wizdata, uint16_t len)
{
   uint16_t ptr = 0;
   uint32_t addrsel = 0;

   if(len == 0) return;
   ptr = getSn_RX_RD(sn);


   addrsel = ((uint32_t)ptr << 8) + (WIZCHIP_RXBUF_BLOCK(sn) << 3);

   WIZCHIP_READ_BUF(addrsel, wizdata, len);
   ptr += len;

   setSn_RX_RD(sn,ptr);
}
