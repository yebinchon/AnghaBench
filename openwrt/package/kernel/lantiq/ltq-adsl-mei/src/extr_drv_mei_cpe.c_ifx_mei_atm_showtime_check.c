
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_cell_info {int port_num; int * tx_link_rate; } ;


 int * g_tx_link_rate ;
 void* g_xdata_addr ;

int ifx_mei_atm_showtime_check(int *is_showtime, struct port_cell_info *port_cell, void **xdata_addr)
{
    int i;

    if ( is_showtime ) {
        *is_showtime = g_tx_link_rate[0] == 0 && g_tx_link_rate[1] == 0 ? 0 : 1;
    }

    if ( port_cell ) {
        for ( i = 0; i < port_cell->port_num && i < 2; i++ )
            port_cell->tx_link_rate[i] = g_tx_link_rate[i];
    }

    if ( xdata_addr ) {
        if ( g_tx_link_rate[0] == 0 && g_tx_link_rate[1] == 0 )
            *xdata_addr = ((void*)0);
        else
            *xdata_addr = g_xdata_addr;
    }

    return 0;
}
