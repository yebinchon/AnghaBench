
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RXLED0 ;
 int TXLED0 ;
 int TX_RX_LED_INIT ;

void tx_rx_leds_init(void)
{

    TX_RX_LED_INIT;
    TXLED0;
    RXLED0;

}
