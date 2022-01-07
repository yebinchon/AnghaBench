
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct netif {TYPE_1__* dhcp; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int Board_LED_Set (int,int) ;
 int Chip_ENET_Set100Mbps (int ) ;
 int Chip_ENET_Set10Mbps (int ) ;
 int Chip_ENET_SetFullDuplex (int ) ;
 int Chip_ENET_SetHalfDuplex (int ) ;
 scalar_t__ DHCP_BOUND ;
 int LPC_ETHERNET ;
 int PHY_LINK_CHANGED ;
 int PHY_LINK_CONNECTED ;
 int PHY_LINK_FULLDUPLX ;
 int PHY_LINK_SPEED100 ;
 int lpcPHYStsPoll () ;
 int lpc_enetif_input (struct netif*) ;
 int lpc_tx_reclaim (struct netif*) ;
 int netif_set_link_down (struct netif*) ;
 int netif_set_link_up (struct netif*) ;
 int printf (char*) ;

void handle_eth(struct netif *eth_if) {

  uint32_t status = lpcPHYStsPoll();

  if (status & PHY_LINK_CHANGED) {
    if (status & PHY_LINK_CONNECTED) {
      Board_LED_Set(0, 1);

      if (status & PHY_LINK_SPEED100) {
        Chip_ENET_Set100Mbps(LPC_ETHERNET);
      } else {
        Chip_ENET_Set10Mbps(LPC_ETHERNET);
      }
      if (status & PHY_LINK_FULLDUPLX) {
        Chip_ENET_SetFullDuplex(LPC_ETHERNET);
      } else {
        Chip_ENET_SetHalfDuplex(LPC_ETHERNET);
      }

      netif_set_link_up(eth_if);
      printf("Link up\r\n");
    } else {
      Board_LED_Set(0, 0);
      netif_set_link_down(eth_if);
      printf("Link down\r\n");
    }
  }

  Board_LED_Set(1, (eth_if->dhcp->state == DHCP_BOUND));


  lpc_enetif_input(eth_if);


  lpc_tx_reclaim(eth_if);
}
